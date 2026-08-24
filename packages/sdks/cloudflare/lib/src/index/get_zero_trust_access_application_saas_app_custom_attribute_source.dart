// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_saas_app_custom_attribute_source_name_by_idp.dart';

class GetZeroTrustAccessApplicationSaasAppCustomAttributeSource {
  /// The name of the IdP attribute.
  final pulumi.Input<String> name;
  /// A mapping from IdP ID to attribute name.
  final pulumi.Input<List<GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp>> nameByIdps;

  /// Creates a new [GetZeroTrustAccessApplicationSaasAppCustomAttributeSource].
  /// [name] The name of the IdP attribute.
  /// [nameByIdps] A mapping from IdP ID to attribute name.
  const GetZeroTrustAccessApplicationSaasAppCustomAttributeSource({
    required this.name,
    required this.nameByIdps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nameByIdps': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp>, List<Map<String, dynamic>>>(nameByIdps, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustAccessApplicationSaasAppCustomAttributeSource.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationSaasAppCustomAttributeSource(
      name: pulumi.Input.fromValue(map['name'] as String),
      nameByIdps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp>(map['nameByIdps']!, (value) => GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
