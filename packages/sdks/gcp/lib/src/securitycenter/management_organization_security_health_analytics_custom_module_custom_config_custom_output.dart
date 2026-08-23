// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_organization_security_health_analytics_custom_module_custom_config_custom_output_property.dart';

class ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final pulumi.Input<List<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>>? properties;

  /// Creates a new [ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  const ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput.fromMap(Map<String, dynamic> map) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>(guardedValue, (value) => ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
