// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPageShieldCookiesListResult {
  final pulumi.Input<String> domainAttribute;
  final pulumi.Input<String> expiresAttribute;
  final pulumi.Input<String> firstSeenAt;
  final pulumi.Input<String> host;
  final pulumi.Input<bool> httpOnlyAttribute;
  /// Identifier
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastSeenAt;
  final pulumi.Input<int> maxAgeAttribute;
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> pageUrls;
  final pulumi.Input<String> pathAttribute;
  /// Available values: "lax", "strict", "none".
  final pulumi.Input<String> sameSiteAttribute;
  final pulumi.Input<bool> secureAttribute;
  /// Available values: "firstParty", "unknown".
  final pulumi.Input<String> type;

  /// Creates a new [GetPageShieldCookiesListResult].
  /// [domainAttribute] Required.
  /// [expiresAttribute] Required.
  /// [firstSeenAt] Required.
  /// [host] Required.
  /// [httpOnlyAttribute] Required.
  /// [id] Identifier
  /// [lastSeenAt] Required.
  /// [maxAgeAttribute] Required.
  /// [name] Required.
  /// [pageUrls] Required.
  /// [pathAttribute] Required.
  /// [sameSiteAttribute] Available values: "lax", "strict", "none".
  /// [secureAttribute] Required.
  /// [type] Available values: "firstParty", "unknown".
  const GetPageShieldCookiesListResult({
    required this.domainAttribute,
    required this.expiresAttribute,
    required this.firstSeenAt,
    required this.host,
    required this.httpOnlyAttribute,
    required this.id,
    required this.lastSeenAt,
    required this.maxAgeAttribute,
    required this.name,
    required this.pageUrls,
    required this.pathAttribute,
    required this.sameSiteAttribute,
    required this.secureAttribute,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainAttribute': domainAttribute,
      'expiresAttribute': expiresAttribute,
      'firstSeenAt': firstSeenAt,
      'host': host,
      'httpOnlyAttribute': httpOnlyAttribute,
      'id': id,
      'lastSeenAt': lastSeenAt,
      'maxAgeAttribute': maxAgeAttribute,
      'name': name,
      'pageUrls': pageUrls,
      'pathAttribute': pathAttribute,
      'sameSiteAttribute': sameSiteAttribute,
      'secureAttribute': secureAttribute,
      'type': type,
    };
  }

  factory GetPageShieldCookiesListResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldCookiesListResult(
      domainAttribute: pulumi.Input.fromValue(map['domainAttribute'] as String),
      expiresAttribute: pulumi.Input.fromValue(map['expiresAttribute'] as String),
      firstSeenAt: pulumi.Input.fromValue(map['firstSeenAt'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      httpOnlyAttribute: pulumi.Input.fromValue(map['httpOnlyAttribute'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastSeenAt: pulumi.Input.fromValue(map['lastSeenAt'] as String),
      maxAgeAttribute: pulumi.Input.fromValue((map['maxAgeAttribute'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      pageUrls: pulumi.Input.fromValue((map['pageUrls'] as List).cast<String>()),
      pathAttribute: pulumi.Input.fromValue(map['pathAttribute'] as String),
      sameSiteAttribute: pulumi.Input.fromValue(map['sameSiteAttribute'] as String),
      secureAttribute: pulumi.Input.fromValue(map['secureAttribute'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
