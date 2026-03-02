// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_health_response.dart';

/// Additional workflow properties.
class WorkflowEnvelopeResponseProperties {
  /// Gets or sets the files.
  final pulumi.Input<Map<String, dynamic>>? files;
  /// Gets or sets the state of the workflow.
  final pulumi.Input<String>? flowState;
  /// Gets or sets workflow health.
  final pulumi.Input<WorkflowHealthResponse>? health;

  /// Creates a new [WorkflowEnvelopeResponseProperties].
  /// [files] Gets or sets the files.
  /// [flowState] Gets or sets the state of the workflow.
  /// [health] Gets or sets workflow health.
  WorkflowEnvelopeResponseProperties({
    this.files,
    this.flowState,
    this.health,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': ?files,
      'flowState': ?flowState,
      'health': ?pulumi.Input.mapOptionalInputValue<WorkflowHealthResponse, Map<String, dynamic>>(health, (value) => value.toMap()),
    };
  }

  factory WorkflowEnvelopeResponseProperties.fromMap(Map<String, dynamic> map) {
    return WorkflowEnvelopeResponseProperties(
      files: map['files'] == null ? null : ((map['files']! as Map).cast<String, dynamic>()).input(),
      flowState: map['flowState'] == null ? null : (map['flowState']! as String).input(),
      health: map['health'] == null ? null : (WorkflowHealthResponse.fromMap((map['health']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

