// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_interval.dart';

/// Specifies how a facet is computed.
class GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey {
  /// True to make facet keys case insensitive when getting faceting values with prefixes or contains; false otherwise.
  final pulumi.Input<bool>? caseInsensitive;

  /// Only get facet values that contains the given strings. For example, suppose "categories" has three values "Women &gt; Shoe", "Women &gt; Dress" and "Men &gt; Shoe". If set "contains" to "Shoe", the "categories" facet gives only "Women &gt; Shoe" and "Men &gt; Shoe". Only supported on textual fields. Maximum is 10.
  final pulumi.Input<List<String>>? contains;

  /// Set only if values should be bucketized into intervals. Must be set for facets with numerical values. Must not be set for facet with text values. Maximum number of intervals is 40. For all numerical facet keys that appear in the list of products from the catalog, the percentiles 0, 10, 30, 50, 70, 90, and 100 are computed from their distribution weekly. If the model assigns a high score to a numerical facet key and its intervals are not specified in the search request, these percentiles become the bounds for its intervals and are returned in the response. If the facet key intervals are specified in the request, then the specified intervals are returned instead.
  final pulumi.Input<List<GoogleCloudRetailV2alphaInterval>>? intervals;

  /// Supported textual and numerical facet keys in Product object, over which the facet values are computed. Facet key is case-sensitive. Allowed facet keys when FacetKey.query is not specified: * textual_field = * "brands" * "categories" * "genders" * "ageGroups" * "availability" * "colorFamilies" * "colors" * "sizes" * "materials" * "patterns" * "conditions" * "attributes.key" * "pickupInStore" * "shipToStore" * "sameDayDelivery" * "nextDayDelivery" * "customFulfillment1" * "customFulfillment2" * "customFulfillment3" * "customFulfillment4" * "customFulfillment5" * "inventory(place_id,attributes.key)" * numerical_field = * "price" * "discount" * "rating" * "ratingCount" * "attributes.key" * "inventory(place_id,price)" * "inventory(place_id,original_price)" * "inventory(place_id,attributes.key)"
  final pulumi.Input<String> key;

  /// The order in which SearchResponse.Facet.values are returned. Allowed values are: * "count desc", which means order by SearchResponse.Facet.values.count descending. * "value desc", which means order by SearchResponse.Facet.values.value descending. Only applies to textual facets. If not set, textual values are sorted in [natural order](https://en.wikipedia.org/wiki/Natural_sort_order); numerical intervals are sorted in the order given by FacetSpec.FacetKey.intervals; FulfillmentInfo.place_ids are sorted in the order given by FacetSpec.FacetKey.restricted_values.
  final pulumi.Input<String>? orderBy;

  /// Only get facet values that start with the given string prefix. For example, suppose "categories" has three values "Women &gt; Shoe", "Women &gt; Dress" and "Men &gt; Shoe". If set "prefixes" to "Women", the "categories" facet gives only "Women &gt; Shoe" and "Women &gt; Dress". Only supported on textual fields. Maximum is 10.
  final pulumi.Input<List<String>>? prefixes;

  /// The query that is used to compute facet for the given facet key. When provided, it overrides the default behavior of facet computation. The query syntax is the same as a filter expression. See SearchRequest.filter for detail syntax and limitations. Notice that there is no limitation on FacetKey.key when query is specified. In the response, SearchResponse.Facet.values.value is always "1" and SearchResponse.Facet.values.count is the number of results that match the query. For example, you can set a customized facet for "shipToStore", where FacetKey.key is "customizedShipToStore", and FacetKey.query is "availability: ANY(\"IN_STOCK\") AND shipToStore: ANY(\"123\")". Then the facet counts the products that are both in stock and ship to store "123".
  final pulumi.Input<String>? query;

  /// Only get facet for the given restricted values. For example, when using "pickupInStore" as key and set restricted values to ["store123", "store456"], only facets for "store123" and "store456" are returned. Only supported on predefined textual fields, custom textual attributes and fulfillments. Maximum is 20. Must be set for the fulfillment facet keys: * pickupInStore * shipToStore * sameDayDelivery * nextDayDelivery * customFulfillment1 * customFulfillment2 * customFulfillment3 * customFulfillment4 * customFulfillment5
  final pulumi.Input<List<String>>? restrictedValues;

  /// Returns the min and max value for each numerical facet intervals. Ignored for textual facets.
  final pulumi.Input<bool>? returnMinMax;

  /// Creates a new [GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey].
  /// [caseInsensitive] True to make facet keys case insensitive when getting faceting values with prefixes or contains; false otherwise.
  /// [contains] Only get facet values that contains the given strings. For example, suppose "categories" has three values "Women &gt; Shoe", "Women &gt; Dress" and "Men &gt; Shoe". If set "contains" to "Shoe", the "categories" facet gives only "Women &gt; Shoe" and "Men &gt; Shoe". Only supported on textual fields. Maximum is 10.
  /// [intervals] Set only if values should be bucketized into intervals. Must be set for facets with numerical values. Must not be set for facet with text values. Maximum number of intervals is 40. For all numerical facet keys that appear in the list of products from the catalog, the percentiles 0, 10, 30, 50, 70, 90, and 100 are computed from their distribution weekly. If the model assigns a high score to a numerical facet key and its intervals are not specified in the search request, these percentiles become the bounds for its intervals and are returned in the response. If the facet key intervals are specified in the request, then the specified intervals are returned instead.
  /// [key] Supported textual and numerical facet keys in Product object, over which the facet values are computed. Facet key is case-sensitive. Allowed facet keys when FacetKey.query is not specified: * textual_field = * "brands" * "categories" * "genders" * "ageGroups" * "availability" * "colorFamilies" * "colors" * "sizes" * "materials" * "patterns" * "conditions" * "attributes.key" * "pickupInStore" * "shipToStore" * "sameDayDelivery" * "nextDayDelivery" * "customFulfillment1" * "customFulfillment2" * "customFulfillment3" * "customFulfillment4" * "customFulfillment5" * "inventory(place_id,attributes.key)" * numerical_field = * "price" * "discount" * "rating" * "ratingCount" * "attributes.key" * "inventory(place_id,price)" * "inventory(place_id,original_price)" * "inventory(place_id,attributes.key)"
  /// [orderBy] The order in which SearchResponse.Facet.values are returned. Allowed values are: * "count desc", which means order by SearchResponse.Facet.values.count descending. * "value desc", which means order by SearchResponse.Facet.values.value descending. Only applies to textual facets. If not set, textual values are sorted in [natural order](https://en.wikipedia.org/wiki/Natural_sort_order); numerical intervals are sorted in the order given by FacetSpec.FacetKey.intervals; FulfillmentInfo.place_ids are sorted in the order given by FacetSpec.FacetKey.restricted_values.
  /// [prefixes] Only get facet values that start with the given string prefix. For example, suppose "categories" has three values "Women &gt; Shoe", "Women &gt; Dress" and "Men &gt; Shoe". If set "prefixes" to "Women", the "categories" facet gives only "Women &gt; Shoe" and "Women &gt; Dress". Only supported on textual fields. Maximum is 10.
  /// [query] The query that is used to compute facet for the given facet key. When provided, it overrides the default behavior of facet computation. The query syntax is the same as a filter expression. See SearchRequest.filter for detail syntax and limitations. Notice that there is no limitation on FacetKey.key when query is specified. In the response, SearchResponse.Facet.values.value is always "1" and SearchResponse.Facet.values.count is the number of results that match the query. For example, you can set a customized facet for "shipToStore", where FacetKey.key is "customizedShipToStore", and FacetKey.query is "availability: ANY(\"IN_STOCK\") AND shipToStore: ANY(\"123\")". Then the facet counts the products that are both in stock and ship to store "123".
  /// [restrictedValues] Only get facet for the given restricted values. For example, when using "pickupInStore" as key and set restricted values to ["store123", "store456"], only facets for "store123" and "store456" are returned. Only supported on predefined textual fields, custom textual attributes and fulfillments. Maximum is 20. Must be set for the fulfillment facet keys: * pickupInStore * shipToStore * sameDayDelivery * nextDayDelivery * customFulfillment1 * customFulfillment2 * customFulfillment3 * customFulfillment4 * customFulfillment5
  /// [returnMinMax] Returns the min and max value for each numerical facet intervals. Ignored for textual facets.
  GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey({
    this.caseInsensitive,
    this.contains,
    this.intervals,
    required this.key,
    this.orderBy,
    this.prefixes,
    this.query,
    this.restrictedValues,
    this.returnMinMax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseInsensitive': ?caseInsensitive,
      'contains': ?contains,
      'intervals':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudRetailV2alphaInterval>,
            List<Map<String, dynamic>>
          >(
            intervals,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudRetailV2alphaInterval,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'key': key,
      'orderBy': ?orderBy,
      'prefixes': ?prefixes,
      'query': ?query,
      'restrictedValues': ?restrictedValues,
      'returnMinMax': ?returnMinMax,
    };
  }

  factory GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey(
      caseInsensitive: (() {
        final guardedValue = map['caseInsensitive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      contains: (() {
        final guardedValue = map['contains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      intervals: (() {
        final guardedValue = map['intervals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudRetailV2alphaInterval>(
            guardedValue,
            (value) => GoogleCloudRetailV2alphaInterval.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefixes: (() {
        final guardedValue = map['prefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restrictedValues: (() {
        final guardedValue = map['restrictedValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      returnMinMax: (() {
        final guardedValue = map['returnMinMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
