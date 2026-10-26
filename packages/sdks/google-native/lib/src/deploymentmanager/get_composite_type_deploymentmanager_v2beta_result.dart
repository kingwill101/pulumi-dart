// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_type_label_entry_response_deploymentmanager_v2beta.dart';
import 'operation_response_deploymentmanager_v2beta.dart';
import 'template_contents_response_deploymentmanager_v2beta.dart';

/// Result data returned by getCompositeType.
class GetCompositeTypeDeploymentmanagerV2betaResult {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final String? description;
  /// Creation timestamp in RFC3339 text format.
  final String? insertTime;
  /// Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final List<CompositeTypeLabelEntryResponseDeploymentmanagerV2beta>? labels;
  /// Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  final String? name;
  /// The Operation that most recently ran, or is currently running, on this composite type.
  final OperationResponseDeploymentmanagerV2beta? operation;
  /// Server defined URL for the resource.
  final String? selfLink;
  final String? status;
  /// Files for the template type.
  final TemplateContentsResponseDeploymentmanagerV2beta? templateContents;

  /// Creates a new [GetCompositeTypeDeploymentmanagerV2betaResult].
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [insertTime] Creation timestamp in RFC3339 text format.
  /// [labels] Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  /// [name] Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  /// [operation] The Operation that most recently ran, or is currently running, on this composite type.
  /// [selfLink] Server defined URL for the resource.
  /// [status] Optional.
  /// [templateContents] Files for the template type.
  const GetCompositeTypeDeploymentmanagerV2betaResult({
    this.description,
    this.insertTime,
    this.labels,
    this.name,
    this.operation,
    this.selfLink,
    this.status,
    this.templateContents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'insertTime': ?insertTime,
      'labels': ?(() { final guardedValue = labels; if (guardedValue == null) return null; return pulumi.Input.encodeList<CompositeTypeLabelEntryResponseDeploymentmanagerV2beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'operation': ?operation?.toMap(),
      'selfLink': ?selfLink,
      'status': ?status,
      'templateContents': ?templateContents?.toMap(),
    };
  }

  factory GetCompositeTypeDeploymentmanagerV2betaResult.fromMap(Map<String, dynamic> map) {
    return GetCompositeTypeDeploymentmanagerV2betaResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insertTime: (() { final guardedValue = map['insertTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompositeTypeLabelEntryResponseDeploymentmanagerV2beta>(guardedValue, (value) => CompositeTypeLabelEntryResponseDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return OperationResponseDeploymentmanagerV2beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateContents: (() { final guardedValue = map['templateContents']; if (guardedValue == null) return null; return TemplateContentsResponseDeploymentmanagerV2beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
