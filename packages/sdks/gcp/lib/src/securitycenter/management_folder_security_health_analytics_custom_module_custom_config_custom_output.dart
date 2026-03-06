// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_folder_security_health_analytics_custom_module_custom_config_custom_output_property.dart';

class ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final pulumi.Input<List<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>>? properties;

  /// Creates a new [ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  const ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput.fromMap(Map<String, dynamic> map) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>(guardedValue, (value) => ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

