// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InputAmountStruct extends FFFirebaseStruct {
  InputAmountStruct({
    double? addAmount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _addAmount = addAmount,
        super(firestoreUtilData);

  // "add_amount" field.
  double? _addAmount;
  double get addAmount => _addAmount ?? 0.0;
  set addAmount(double? val) => _addAmount = val;
  void incrementAddAmount(double amount) => _addAmount = addAmount + amount;
  bool hasAddAmount() => _addAmount != null;

  static InputAmountStruct fromMap(Map<String, dynamic> data) =>
      InputAmountStruct(
        addAmount: castToType<double>(data['add_amount']),
      );

  static InputAmountStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? InputAmountStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'add_amount': _addAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'add_amount': serializeParam(
          _addAmount,
          ParamType.double,
        ),
      }.withoutNulls;

  static InputAmountStruct fromSerializableMap(Map<String, dynamic> data) =>
      InputAmountStruct(
        addAmount: deserializeParam(
          data['add_amount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'InputAmountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InputAmountStruct && addAmount == other.addAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([addAmount]);
}

InputAmountStruct createInputAmountStruct({
  double? addAmount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InputAmountStruct(
      addAmount: addAmount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InputAmountStruct? updateInputAmountStruct(
  InputAmountStruct? inputAmount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    inputAmount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInputAmountStructData(
  Map<String, dynamic> firestoreData,
  InputAmountStruct? inputAmount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (inputAmount == null) {
    return;
  }
  if (inputAmount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && inputAmount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final inputAmountData =
      getInputAmountFirestoreData(inputAmount, forFieldValue);
  final nestedData =
      inputAmountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = inputAmount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInputAmountFirestoreData(
  InputAmountStruct? inputAmount, [
  bool forFieldValue = false,
]) {
  if (inputAmount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(inputAmount.toMap());

  // Add any Firestore field values
  inputAmount.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInputAmountListFirestoreData(
  List<InputAmountStruct>? inputAmounts,
) =>
    inputAmounts?.map((e) => getInputAmountFirestoreData(e, true)).toList() ??
    [];
