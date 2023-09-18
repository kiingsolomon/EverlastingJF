import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonationRecord extends FirestoreRecord {
  DonationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "customAmount" field.
  int? _customAmount;
  int get customAmount => _customAmount ?? 0;
  bool hasCustomAmount() => _customAmount != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _customAmount = castToType<int>(snapshotData['customAmount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Donation');

  static Stream<DonationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonationRecord.fromSnapshot(s));

  static Future<DonationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonationRecord.fromSnapshot(s));

  static DonationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DonationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonationRecordData({
  String? displayName,
  int? customAmount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'customAmount': customAmount,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonationRecordDocumentEquality implements Equality<DonationRecord> {
  const DonationRecordDocumentEquality();

  @override
  bool equals(DonationRecord? e1, DonationRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.customAmount == e2?.customAmount;
  }

  @override
  int hash(DonationRecord? e) =>
      const ListEquality().hash([e?.displayName, e?.customAmount]);

  @override
  bool isValidKey(Object? o) => o is DonationRecord;
}
