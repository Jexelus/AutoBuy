import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "mileage" field.
  int? _mileage;
  int get mileage => _mileage ?? 0;
  bool hasMileage() => _mileage != null;

  // "carYear" field.
  int? _carYear;
  int get carYear => _carYear ?? 0;
  bool hasCarYear() => _carYear != null;

  // "engineType" field.
  String? _engineType;
  String get engineType => _engineType ?? '';
  bool hasEngineType() => _engineType != null;

  // "carmodel" field.
  String? _carmodel;
  String get carmodel => _carmodel ?? '';
  bool hasCarmodel() => _carmodel != null;

  // "engineCapacity" field.
  double? _engineCapacity;
  double get engineCapacity => _engineCapacity ?? 0.0;
  bool hasEngineCapacity() => _engineCapacity != null;

  // "requestState" field.
  bool? _requestState;
  bool get requestState => _requestState ?? false;
  bool hasRequestState() => _requestState != null;

  // "bodyColor" field.
  String? _bodyColor;
  String get bodyColor => _bodyColor ?? '';
  bool hasBodyColor() => _bodyColor != null;

  // "photoList" field.
  List<String>? _photoList;
  List<String> get photoList => _photoList ?? const [];
  bool hasPhotoList() => _photoList != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "approved" field.
  String? _approved;
  String get approved => _approved ?? '';
  bool hasApproved() => _approved != null;

  // "userRefOfCreator" field.
  DocumentReference? _userRefOfCreator;
  DocumentReference? get userRefOfCreator => _userRefOfCreator;
  bool hasUserRefOfCreator() => _userRefOfCreator != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _mileage = castToType<int>(snapshotData['mileage']);
    _carYear = castToType<int>(snapshotData['carYear']);
    _engineType = snapshotData['engineType'] as String?;
    _carmodel = snapshotData['carmodel'] as String?;
    _engineCapacity = castToType<double>(snapshotData['engineCapacity']);
    _requestState = snapshotData['requestState'] as bool?;
    _bodyColor = snapshotData['bodyColor'] as String?;
    _photoList = getDataList(snapshotData['photoList']);
    _orderId = snapshotData['orderId'] as String?;
    _approved = snapshotData['approved'] as String?;
    _userRefOfCreator = snapshotData['userRefOfCreator'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? userId,
  int? mileage,
  int? carYear,
  String? engineType,
  String? carmodel,
  double? engineCapacity,
  bool? requestState,
  String? bodyColor,
  String? orderId,
  String? approved,
  DocumentReference? userRefOfCreator,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'mileage': mileage,
      'carYear': carYear,
      'engineType': engineType,
      'carmodel': carmodel,
      'engineCapacity': engineCapacity,
      'requestState': requestState,
      'bodyColor': bodyColor,
      'orderId': orderId,
      'approved': approved,
      'userRefOfCreator': userRefOfCreator,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.mileage == e2?.mileage &&
        e1?.carYear == e2?.carYear &&
        e1?.engineType == e2?.engineType &&
        e1?.carmodel == e2?.carmodel &&
        e1?.engineCapacity == e2?.engineCapacity &&
        e1?.requestState == e2?.requestState &&
        e1?.bodyColor == e2?.bodyColor &&
        listEquality.equals(e1?.photoList, e2?.photoList) &&
        e1?.orderId == e2?.orderId &&
        e1?.approved == e2?.approved &&
        e1?.userRefOfCreator == e2?.userRefOfCreator;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.mileage,
        e?.carYear,
        e?.engineType,
        e?.carmodel,
        e?.engineCapacity,
        e?.requestState,
        e?.bodyColor,
        e?.photoList,
        e?.orderId,
        e?.approved,
        e?.userRefOfCreator
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
