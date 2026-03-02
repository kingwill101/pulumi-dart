// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HttpRouteRuleMatch criteria for a request's query parameter.
class HttpQueryParameterMatchResponseComputeBeta {
  /// The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final pulumi.Input<String> exactMatch;
  /// The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  final pulumi.Input<String> name;
  /// Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final pulumi.Input<bool> presentMatch;
  /// The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<String> regexMatch;

  /// Creates a new [HttpQueryParameterMatchResponseComputeBeta].
  /// [exactMatch] The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  /// [name] The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  /// [presentMatch] Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  /// [regexMatch] The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  HttpQueryParameterMatchResponseComputeBeta({
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

  factory HttpQueryParameterMatchResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpQueryParameterMatchResponseComputeBeta(
      exactMatch: (map['exactMatch'] as String).input(),
      name: (map['name'] as String).input(),
      presentMatch: (map['presentMatch'] as bool).input(),
      regexMatch: (map['regexMatch'] as String).input(),
    );
  }
}

