// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_saas_app_custom_attribute_source_name_by_idp.dart';

class GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSource {
  /// The name of the IdP attribute.
  final pulumi.Input<String> name;
  /// A mapping from IdP ID to attribute name.
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp>> nameByIdps;

  /// Creates a new [GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSource].
  /// [name] The name of the IdP attribute.
  /// [nameByIdps] A mapping from IdP ID to attribute name.
  const GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSource({
    required this.name,
    required this.nameByIdps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nameByIdps': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp>, List<Map<String, dynamic>>>(nameByIdps, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSource.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSource(
      name: pulumi.Input.fromValue(map['name'] as String),
      nameByIdps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp>(map['nameByIdps']!, (value) => GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
