// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_saas_app_custom_attribute_source_name_by_idp.dart';

class AccessApplicationSaasAppCustomAttributeSource {
  /// The name of the IdP attribute.
  final pulumi.Input<String?>? name;
  /// A mapping from IdP ID to attribute name.
  final pulumi.Input<List<AccessApplicationSaasAppCustomAttributeSourceNameByIdp>?>? nameByIdps;

  /// Creates a new [AccessApplicationSaasAppCustomAttributeSource].
  /// [name] The name of the IdP attribute.
  /// [nameByIdps] A mapping from IdP ID to attribute name.
  const AccessApplicationSaasAppCustomAttributeSource({
    this.name,
    this.nameByIdps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nameByIdps': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationSaasAppCustomAttributeSourceNameByIdp>, List<Map<String, dynamic>>>(nameByIdps, (value) => pulumi.Input.encodeList<AccessApplicationSaasAppCustomAttributeSourceNameByIdp, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessApplicationSaasAppCustomAttributeSource.fromMap(Map<String, dynamic> map) {
    return AccessApplicationSaasAppCustomAttributeSource(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameByIdps: (() { final guardedValue = map['nameByIdps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationSaasAppCustomAttributeSourceNameByIdp>(guardedValue, (value) => AccessApplicationSaasAppCustomAttributeSourceNameByIdp.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
