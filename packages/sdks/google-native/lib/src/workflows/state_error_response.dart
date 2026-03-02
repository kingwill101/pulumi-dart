// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an error related to the current state of the workflow.
class StateErrorResponse {
  /// Provides specifics about the error.
  final pulumi.Input<String> details;
  /// The type of this state error.
  final pulumi.Input<String> type;

  /// Creates a new [StateErrorResponse].
  /// [details] Provides specifics about the error.
  /// [type] The type of this state error.
  StateErrorResponse({
    required this.details,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'type': type,
    };
  }

  factory StateErrorResponse.fromMap(Map<String, dynamic> map) {
    return StateErrorResponse(
      details: (map['details'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

