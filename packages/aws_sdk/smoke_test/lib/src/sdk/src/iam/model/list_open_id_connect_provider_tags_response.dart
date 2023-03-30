// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.list_open_id_connect_provider_tags_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i2;

part 'list_open_id_connect_provider_tags_response.g.dart';

abstract class ListOpenIdConnectProviderTagsResponse
    with
        _i1.AWSEquatable<ListOpenIdConnectProviderTagsResponse>
    implements
        Built<ListOpenIdConnectProviderTagsResponse,
            ListOpenIdConnectProviderTagsResponseBuilder> {
  factory ListOpenIdConnectProviderTagsResponse({
    required List<_i2.Tag> tags,
    bool? isTruncated,
    String? marker,
  }) {
    return _$ListOpenIdConnectProviderTagsResponse._(
      tags: _i3.BuiltList(tags),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  factory ListOpenIdConnectProviderTagsResponse.build(
      [void Function(ListOpenIdConnectProviderTagsResponseBuilder)
          updates]) = _$ListOpenIdConnectProviderTagsResponse;

  const ListOpenIdConnectProviderTagsResponse._();

  /// Constructs a [ListOpenIdConnectProviderTagsResponse] from a [payload] and [response].
  factory ListOpenIdConnectProviderTagsResponse.fromResponse(
    ListOpenIdConnectProviderTagsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListOpenIdConnectProviderTagsResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListOpenIdConnectProviderTagsResponseBuilder b) {}

  /// The list of tags that are currently attached to the OpenID Connect (OIDC) identity provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
  _i3.BuiltList<_i2.Tag> get tags;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool? get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        tags,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListOpenIdConnectProviderTagsResponse');
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'marker',
      marker,
    );
    return helper.toString();
  }
}

class ListOpenIdConnectProviderTagsResponseAwsQuerySerializer extends _i4
    .StructuredSmithySerializer<ListOpenIdConnectProviderTagsResponse> {
  const ListOpenIdConnectProviderTagsResponseAwsQuerySerializer()
      : super('ListOpenIdConnectProviderTagsResponse');

  @override
  Iterable<Type> get types => const [
        ListOpenIdConnectProviderTagsResponse,
        _$ListOpenIdConnectProviderTagsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListOpenIdConnectProviderTagsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListOpenIdConnectProviderTagsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Tags':
          result.tags.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Tag)],
            ),
          ) as _i3.BuiltList<_i2.Tag>));
          break;
        case 'IsTruncated':
          if (value != null) {
            result.isTruncated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Marker':
          if (value != null) {
            result.marker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ListOpenIdConnectProviderTagsResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListOpenIdConnectProviderTagsResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('Tags'))
      ..add(
          const _i4.XmlBuiltListSerializer(indexer: _i4.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        payload.tags,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.Tag)],
        ),
      ));
    if (payload.isTruncated != null) {
      result
        ..add(const _i4.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          payload.isTruncated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.marker != null) {
      result
        ..add(const _i4.XmlElementName('Marker'))
        ..add(serializers.serialize(
          payload.marker!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
