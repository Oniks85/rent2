import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hostels_record.g.dart';

abstract class HostelsRecord
    implements Built<HostelsRecord, HostelsRecordBuilder> {
  static Serializer<HostelsRecord> get serializer => _$hostelsRecordSerializer;

  @nullable
  String get image;

  @nullable
  String get name;

  @nullable
  String get address;

  @nullable
  @BuiltValueField(wireName: 'seo_title')
  String get seoTitle;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HostelsRecordBuilder builder) => builder
    ..image = ''
    ..name = ''
    ..address = ''
    ..seoTitle = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hostels');

  static Stream<HostelsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HostelsRecord._();
  factory HostelsRecord([void Function(HostelsRecordBuilder) updates]) =
      _$HostelsRecord;

  static HostelsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHostelsRecordData({
  String image,
  String name,
  String address,
  String seoTitle,
}) =>
    serializers.toFirestore(
        HostelsRecord.serializer,
        HostelsRecord((h) => h
          ..image = image
          ..name = name
          ..address = address
          ..seoTitle = seoTitle));
