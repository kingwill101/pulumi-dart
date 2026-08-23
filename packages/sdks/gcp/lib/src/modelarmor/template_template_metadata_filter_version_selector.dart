// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateTemplateMetadataFilterVersionSelector {
  /// A predefined filter version alias. The template automatically follows the
  /// version this alias points to.
  /// Possible values:
  /// FILTER_VERSION_ALIAS_STABLE
  /// FILTER_VERSION_ALIAS_LATEST
  final pulumi.Input<String>? alias;
  /// Pins the template to a specific, immutable filter version. Expected
  /// format is a case-sensitive string such as 'v1' or 'v2'.
  final pulumi.Input<String>? version;

  /// Creates a new [TemplateTemplateMetadataFilterVersionSelector].
  /// [alias] A predefined filter version alias. The template automatically follows the
  /// [version] Pins the template to a specific, immutable filter version. Expected
  const TemplateTemplateMetadataFilterVersionSelector({
    this.alias,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'version': ?version,
    };
  }

  factory TemplateTemplateMetadataFilterVersionSelector.fromMap(Map<String, dynamic> map) {
    return TemplateTemplateMetadataFilterVersionSelector(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
