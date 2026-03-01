// ignore_for_file: unused_element, unnecessary_cast


class WafPolicyGraphqlProfileDefenseAttribute {
  /// Introspection queries can also be enforced to prevent attackers from using them to
  /// understand the API structure and potentially breach an application.
  final bool? allowIntrospectionQueries;
  /// Specifies the highest number of batched queries allowed by the security policy.
  final String? maximumBatchedQueries;
  /// Specifies the greatest nesting depth found in the GraphQL structure allowed by the security policy.
  final String? maximumStructureDepth;
  /// Specifies the longest length, in bytes, allowed by the security policy of the request payload, or parameter value, where the GraphQL data was found.
  final String? maximumTotalLength;
  /// Specifies the longest length (in bytes) of the longest GraphQL element value in the document allowed by the security policy.
  final String? maximumValueLength;
  /// Specifies, when checked (enabled), that the system does not report when the security enforcer encounters warnings while parsing GraphQL content. Specifies when cleared (disabled), that the security policy reports when the security enforcer encounters warnings while parsing GraphQL content. The default setting is disabled.
  final bool? tolerateParsingWarnings;

  /// Creates a new [WafPolicyGraphqlProfileDefenseAttribute].
  /// [allowIntrospectionQueries] Introspection queries can also be enforced to prevent attackers from using them to
  /// [maximumBatchedQueries] Specifies the highest number of batched queries allowed by the security policy.
  /// [maximumStructureDepth] Specifies the greatest nesting depth found in the GraphQL structure allowed by the security policy.
  /// [maximumTotalLength] Specifies the longest length, in bytes, allowed by the security policy of the request payload, or parameter value, where the GraphQL data was found.
  /// [maximumValueLength] Specifies the longest length (in bytes) of the longest GraphQL element value in the document allowed by the security policy.
  /// [tolerateParsingWarnings] Specifies, when checked (enabled), that the system does not report when the security enforcer encounters warnings while parsing GraphQL content. Specifies when cleared (disabled), that the security policy reports when the security enforcer encounters warnings while parsing GraphQL content. The default setting is disabled.
  WafPolicyGraphqlProfileDefenseAttribute({
    this.allowIntrospectionQueries,
    this.maximumBatchedQueries,
    this.maximumStructureDepth,
    this.maximumTotalLength,
    this.maximumValueLength,
    this.tolerateParsingWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowIntrospectionQueries': ?allowIntrospectionQueries,
      'maximumBatchedQueries': ?maximumBatchedQueries,
      'maximumStructureDepth': ?maximumStructureDepth,
      'maximumTotalLength': ?maximumTotalLength,
      'maximumValueLength': ?maximumValueLength,
      'tolerateParsingWarnings': ?tolerateParsingWarnings,
    };
  }

  factory WafPolicyGraphqlProfileDefenseAttribute.fromMap(Map<String, dynamic> map) {
    return WafPolicyGraphqlProfileDefenseAttribute(
      allowIntrospectionQueries: map['allowIntrospectionQueries'] == null ? null : map['allowIntrospectionQueries'] as bool,
      maximumBatchedQueries: map['maximumBatchedQueries'] == null ? null : map['maximumBatchedQueries'] as String,
      maximumStructureDepth: map['maximumStructureDepth'] == null ? null : map['maximumStructureDepth'] as String,
      maximumTotalLength: map['maximumTotalLength'] == null ? null : map['maximumTotalLength'] as String,
      maximumValueLength: map['maximumValueLength'] == null ? null : map['maximumValueLength'] as String,
      tolerateParsingWarnings: map['tolerateParsingWarnings'] == null ? null : map['tolerateParsingWarnings'] as bool,
    );
  }
}

