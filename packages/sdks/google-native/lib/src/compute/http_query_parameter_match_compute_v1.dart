// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HttpRouteRuleMatch criteria for a request's query parameter.
class HttpQueryParameterMatchComputeV1 {
  /// The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final pulumi.Input<String>? exactMatch;
  /// The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  final pulumi.Input<String>? name;
  /// Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final pulumi.Input<bool>? presentMatch;
  /// The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<String>? regexMatch;

  /// Creates a new [HttpQueryParameterMatchComputeV1].
  /// [exactMatch] The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  /// [name] The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  /// [presentMatch] Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  /// [regexMatch] The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  const HttpQueryParameterMatchComputeV1({
    this.exactMatch,
    this.name,
    this.presentMatch,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'name': ?name,
      'presentMatch': ?presentMatch,
      'regexMatch': ?regexMatch,
    };
  }

  factory HttpQueryParameterMatchComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpQueryParameterMatchComputeV1(
      exactMatch: (() { final guardedValue = map['exactMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presentMatch: (() { final guardedValue = map['presentMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regexMatch: (() { final guardedValue = map['regexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
