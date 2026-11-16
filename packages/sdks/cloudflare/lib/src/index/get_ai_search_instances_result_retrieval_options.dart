// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result_retrieval_options_boost_by.dart';

class GetAiSearchInstancesResultRetrievalOptions {
  final pulumi.Input<List<GetAiSearchInstancesResultRetrievalOptionsBoostBy>> boostBies;
  /// Available values: "and", "or".
  final pulumi.Input<String> keywordMatchMode;

  /// Creates a new [GetAiSearchInstancesResultRetrievalOptions].
  /// [boostBies] Required.
  /// [keywordMatchMode] Available values: "and", "or".
  const GetAiSearchInstancesResultRetrievalOptions({
    required this.boostBies,
    required this.keywordMatchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostBies': pulumi.Input.mapInputValue<List<GetAiSearchInstancesResultRetrievalOptionsBoostBy>, List<Map<String, dynamic>>>(boostBies, (value) => pulumi.Input.encodeList<GetAiSearchInstancesResultRetrievalOptionsBoostBy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keywordMatchMode': keywordMatchMode,
    };
  }

  factory GetAiSearchInstancesResultRetrievalOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultRetrievalOptions(
      boostBies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiSearchInstancesResultRetrievalOptionsBoostBy>(map['boostBies']!, (value) => GetAiSearchInstancesResultRetrievalOptionsBoostBy.fromMap((value as Map).cast<String, dynamic>()))),
      keywordMatchMode: pulumi.Input.fromValue(map['keywordMatchMode'] as String),
    );
  }
}
