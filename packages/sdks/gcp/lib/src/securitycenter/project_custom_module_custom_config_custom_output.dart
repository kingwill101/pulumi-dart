// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_custom_module_custom_config_custom_output_property.dart';

class ProjectCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final pulumi.Input<List<ProjectCustomModuleCustomConfigCustomOutputProperty>>?
  properties;

  /// Creates a new [ProjectCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  ProjectCustomModuleCustomConfigCustomOutput({this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            List<ProjectCustomModuleCustomConfigCustomOutputProperty>,
            List<Map<String, dynamic>>
          >(
            properties,
            (value) =>
                pulumi.Input.encodeList<
                  ProjectCustomModuleCustomConfigCustomOutputProperty,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ProjectCustomModuleCustomConfigCustomOutput.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProjectCustomModuleCustomConfigCustomOutput(
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ProjectCustomModuleCustomConfigCustomOutputProperty
          >(
            guardedValue,
            (value) =>
                ProjectCustomModuleCustomConfigCustomOutputProperty.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
