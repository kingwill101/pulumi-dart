// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HttpRouteRuleMatch criteria for a request's query parameter.
class HttpQueryParameterMatchResponseComputeV1 {
  /// The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final pulumi.Input<String> exactMatch;
  /// The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  final pulumi.Input<String> name;
  /// Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final pulumi.Input<bool> presentMatch;
  /// The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<String> regexMatch;

  /// Creates a new [HttpQueryParameterMatchResponseComputeV1].
  /// [exactMatch] The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  /// [name] The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  /// [presentMatch] Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  /// [regexMatch] The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  const HttpQueryParameterMatchResponseComputeV1({
    required this.exactMatch,
    required this.name,
    required this.presentMatch,
    required this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': exactMatch,
      'name': name,
      'presentMatch': presentMatch,
      'regexMatch': regexMatch,
    };
  }

  factory HttpQueryParameterMatchResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpQueryParameterMatchResponseComputeV1(
      exactMatch: pulumi.Input.fromValue(map['exactMatch'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      presentMatch: pulumi.Input.fromValue(map['presentMatch'] as bool),
      regexMatch: pulumi.Input.fromValue(map['regexMatch'] as String),
    );
  }
}

