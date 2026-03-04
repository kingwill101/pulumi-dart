// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_coordinate.dart';
import 'google_cloud_integrations_v1alpha_next_task.dart';

/// Configuration detail of a error catch task
class GoogleCloudIntegrationsV1alphaErrorCatcherConfig {
  /// Optional. User-provided description intended to give more business context about the error catcher config.
  final pulumi.Input<String>? description;

  /// An error catcher id is string representation for the error catcher config. Within a workflow, error_catcher_id uniquely identifies an error catcher config among all error catcher configs for the workflow
  final pulumi.Input<String> errorCatcherId;

  /// A number to uniquely identify each error catcher config within the workflow on UI.
  final pulumi.Input<String> errorCatcherNumber;

  /// Optional. The user created label for a particular error catcher. Optional.
  final pulumi.Input<String>? label;

  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCoordinate>? position;

  /// The set of start tasks that are to be executed for the error catch flow
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaNextTask>>
  startErrorTasks;

  /// Creates a new [GoogleCloudIntegrationsV1alphaErrorCatcherConfig].
  /// [description] Optional. User-provided description intended to give more business context about the error catcher config.
  /// [errorCatcherId] An error catcher id is string representation for the error catcher config. Within a workflow, error_catcher_id uniquely identifies an error catcher config among all error catcher configs for the workflow
  /// [errorCatcherNumber] A number to uniquely identify each error catcher config within the workflow on UI.
  /// [label] Optional. The user created label for a particular error catcher. Optional.
  /// [position] Optional. Informs the front-end application where to draw this error catcher config on the UI.
  /// [startErrorTasks] The set of start tasks that are to be executed for the error catch flow
  GoogleCloudIntegrationsV1alphaErrorCatcherConfig({
    this.description,
    required this.errorCatcherId,
    required this.errorCatcherNumber,
    this.label,
    this.position,
    required this.startErrorTasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'errorCatcherId': errorCatcherId,
      'errorCatcherNumber': errorCatcherNumber,
      'label': ?label,
      'position':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaCoordinate,
            Map<String, dynamic>
          >(position, (value) => value.toMap()),
      'startErrorTasks':
          pulumi.Input.mapInputValue<
            List<GoogleCloudIntegrationsV1alphaNextTask>,
            List<Map<String, dynamic>>
          >(
            startErrorTasks,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudIntegrationsV1alphaNextTask,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaErrorCatcherConfig(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorCatcherId: pulumi.Input.fromValue(map['errorCatcherId'] as String),
      errorCatcherNumber: pulumi.Input.fromValue(
        map['errorCatcherNumber'] as String,
      ),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      position: (() {
        final guardedValue = map['position'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaCoordinate.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      startErrorTasks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaNextTask>(
          map['startErrorTasks']!,
          (value) => GoogleCloudIntegrationsV1alphaNextTask.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
