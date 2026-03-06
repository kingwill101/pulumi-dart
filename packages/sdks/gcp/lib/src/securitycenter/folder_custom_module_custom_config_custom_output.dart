// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_custom_module_custom_config_custom_output_property.dart';

class FolderCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final pulumi.Input<List<FolderCustomModuleCustomConfigCustomOutputProperty>>? properties;

  /// Creates a new [FolderCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  const FolderCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<FolderCustomModuleCustomConfigCustomOutputProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<FolderCustomModuleCustomConfigCustomOutputProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FolderCustomModuleCustomConfigCustomOutput.fromMap(Map<String, dynamic> map) {
    return FolderCustomModuleCustomConfigCustomOutput(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FolderCustomModuleCustomConfigCustomOutputProperty>(guardedValue, (value) => FolderCustomModuleCustomConfigCustomOutputProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

