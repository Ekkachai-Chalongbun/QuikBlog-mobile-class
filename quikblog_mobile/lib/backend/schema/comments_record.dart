import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "blog_ID" field.
  String? _blogID;
  String get blogID => _blogID ?? '';
  bool hasBlogID() => _blogID != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "comment_ID" field.
  String? _commentID;
  String get commentID => _commentID ?? '';
  bool hasCommentID() => _commentID != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "replies" field.
  List<DocumentReference>? _replies;
  List<DocumentReference> get replies => _replies ?? const [];
  bool hasReplies() => _replies != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _blogID = snapshotData['blog_ID'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _commentID = snapshotData['comment_ID'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _replies = getDataList(snapshotData['replies']);
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? blogID,
  DocumentReference? owner,
  String? commentID,
  DateTime? createdTime,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'blog_ID': blogID,
      'owner': owner,
      'comment_ID': commentID,
      'created_time': createdTime,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.blogID == e2?.blogID &&
        e1?.owner == e2?.owner &&
        e1?.commentID == e2?.commentID &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.replies, e2?.replies) &&
        e1?.description == e2?.description;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.blogID,
        e?.owner,
        e?.commentID,
        e?.createdTime,
        e?.replies,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
