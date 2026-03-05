// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SoftwareUpdateConfigurationTargetNonAzureQuery {
  /// Specifies the Log Analytics save search name.
  final pulumi.Input<String>? functionAlias;
  /// The workspace id for Log Analytics in which the saved search in.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [SoftwareUpdateConfigurationTargetNonAzureQuery].
  /// [functionAlias] Specifies the Log Analytics save search name.
  /// [workspaceId] The workspace id for Log Analytics in which the saved search in.
  SoftwareUpdateConfigurationTargetNonAzureQuery({
    this.functionAlias,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAlias': ?functionAlias,
      'workspaceId': ?workspaceId,
    };
  }

  factory SoftwareUpdateConfigurationTargetNonAzureQuery.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTargetNonAzureQuery(
      functionAlias: (() { final guardedValue = map['functionAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

