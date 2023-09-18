// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonationAmountStruct extends FFFirebaseStruct {
  DonationAmountStruct({
    int? selectedAmount,
    int? customAmount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selectedAmount = selectedAmount,
        _customAmount = customAmount,
        super(firestoreUtilData);

  // "selectedAmount" field.
  int? _selectedAmount;
  int get selectedAmount => _selectedAmount ?? 0;
  set selectedAmount(int? val) => _selectedAmount = val;
  void incrementSelectedAmount(int amount) =>
      _selectedAmount = selectedAmount + amount;
  bool hasSelectedAmount() => _selectedAmount != null;

  // "customAmount" field.
  int? _customAmount;
  int get customAmount => _customAmount ?? 0;
  set customAmount(int? val) => _customAmount = val;
  void incrementCustomAmount(int amount) =>
      _customAmount = customAmount + amount;
  bool hasCustomAmount() => _customAmount != null;

  static DonationAmountStruct fromMap(Map<String, dynamic> data) =>
      DonationAmountStruct(
        selectedAmount: castToType<int>(data['selectedAmount']),
        customAmount: castToType<int>(data['customAmount']),
      );

  static DonationAmountStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? DonationAmountStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'selectedAmount': _selectedAmount,
        'customAmount': _customAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selectedAmount': serializeParam(
          _selectedAmount,
          ParamType.int,
        ),
        'customAmount': serializeParam(
          _customAmount,
          ParamType.int,
        ),
      }.withoutNulls;

  static DonationAmountStruct fromSerializableMap(Map<String, dynamic> data) =>
      DonationAmountStruct(
        selectedAmount: deserializeParam(
          data['selectedAmount'],
          ParamType.int,
          false,
        ),
        customAmount: deserializeParam(
          data['customAmount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DonationAmountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DonationAmountStruct &&
        selectedAmount == other.selectedAmount &&
        customAmount == other.customAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([selectedAmount, customAmount]);
}

DonationAmountStruct createDonationAmountStruct({
  int? selectedAmount,
  int? customAmount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DonationAmountStruct(
      selectedAmount: selectedAmount,
      customAmount: customAmount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DonationAmountStruct? updateDonationAmountStruct(
  DonationAmountStruct? donationAmount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    donationAmount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDonationAmountStructData(
  Map<String, dynamic> firestoreData,
  DonationAmountStruct? donationAmount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (donationAmount == null) {
    return;
  }
  if (donationAmount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && donationAmount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final donationAmountData =
      getDonationAmountFirestoreData(donationAmount, forFieldValue);
  final nestedData =
      donationAmountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = donationAmount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDonationAmountFirestoreData(
  DonationAmountStruct? donationAmount, [
  bool forFieldValue = false,
]) {
  if (donationAmount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(donationAmount.toMap());

  // Add any Firestore field values
  donationAmount.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDonationAmountListFirestoreData(
  List<DonationAmountStruct>? donationAmounts,
) =>
    donationAmounts
        ?.map((e) => getDonationAmountFirestoreData(e, true))
        .toList() ??
    [];
