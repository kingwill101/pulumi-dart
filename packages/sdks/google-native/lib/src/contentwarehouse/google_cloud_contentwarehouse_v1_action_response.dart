// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_access_control_action_response.dart';
import 'google_cloud_contentwarehouse_v1_add_to_folder_action_response.dart';
import 'google_cloud_contentwarehouse_v1_data_update_action_response.dart';
import 'google_cloud_contentwarehouse_v1_data_validation_action_response.dart';
import 'google_cloud_contentwarehouse_v1_delete_document_action_response.dart';
import 'google_cloud_contentwarehouse_v1_publish_action_response.dart';
import 'google_cloud_contentwarehouse_v1_remove_from_folder_action_response.dart';

/// Represents the action triggered by Rule Engine when the rule is true.
class GoogleCloudContentwarehouseV1ActionResponse {
  /// Action triggering access control operations.
  final pulumi.Input<GoogleCloudContentwarehouseV1AccessControlActionResponse>
  accessControl;

  /// ID of the action. Managed internally.
  final pulumi.Input<String> actionId;

  /// Action triggering create document link operation.
  final pulumi.Input<GoogleCloudContentwarehouseV1AddToFolderActionResponse>
  addToFolder;

  /// Action triggering data update operations.
  final pulumi.Input<GoogleCloudContentwarehouseV1DataUpdateActionResponse>
  dataUpdate;

  /// Action triggering data validation operations.
  final pulumi.Input<GoogleCloudContentwarehouseV1DataValidationActionResponse>
  dataValidation;

  /// Action deleting the document.
  final pulumi.Input<GoogleCloudContentwarehouseV1DeleteDocumentActionResponse>
  deleteDocumentAction;

  /// Action publish to Pub/Sub operation.
  final pulumi.Input<GoogleCloudContentwarehouseV1PublishActionResponse>
  publishToPubSub;

  /// Action removing a document from a folder.
  final pulumi.Input<
    GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse
  >
  removeFromFolderAction;

  /// Creates a new [GoogleCloudContentwarehouseV1ActionResponse].
  /// [accessControl] Action triggering access control operations.
  /// [actionId] ID of the action. Managed internally.
  /// [addToFolder] Action triggering create document link operation.
  /// [dataUpdate] Action triggering data update operations.
  /// [dataValidation] Action triggering data validation operations.
  /// [deleteDocumentAction] Action deleting the document.
  /// [publishToPubSub] Action publish to Pub/Sub operation.
  /// [removeFromFolderAction] Action removing a document from a folder.
  GoogleCloudContentwarehouseV1ActionResponse({
    required this.accessControl,
    required this.actionId,
    required this.addToFolder,
    required this.dataUpdate,
    required this.dataValidation,
    required this.deleteDocumentAction,
    required this.publishToPubSub,
    required this.removeFromFolderAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControl':
          pulumi.Input.mapInputValue<
            GoogleCloudContentwarehouseV1AccessControlActionResponse,
            Map<String, dynamic>
          >(accessControl, (value) => value.toMap()),
      'actionId': actionId,
      'addToFolder':
          pulumi.Input.mapInputValue<
            GoogleCloudContentwarehouseV1AddToFolderActionResponse,
            Map<String, dynamic>
          >(addToFolder, (value) => value.toMap()),
      'dataUpdate':
          pulumi.Input.mapInputValue<
            GoogleCloudContentwarehouseV1DataUpdateActionResponse,
            Map<String, dynamic>
          >(dataUpdate, (value) => value.toMap()),
      'dataValidation':
          pulumi.Input.mapInputValue<
            GoogleCloudContentwarehouseV1DataValidationActionResponse,
            Map<String, dynamic>
          >(dataValidation, (value) => value.toMap()),
      'deleteDocumentAction':
          pulumi.Input.mapInputValue<
            GoogleCloudContentwarehouseV1DeleteDocumentActionResponse,
            Map<String, dynamic>
          >(deleteDocumentAction, (value) => value.toMap()),
      'publishToPubSub':
          pulumi.Input.mapInputValue<
            GoogleCloudContentwarehouseV1PublishActionResponse,
            Map<String, dynamic>
          >(publishToPubSub, (value) => value.toMap()),
      'removeFromFolderAction':
          pulumi.Input.mapInputValue<
            GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse,
            Map<String, dynamic>
          >(removeFromFolderAction, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1ActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1ActionResponse(
      accessControl: pulumi.Input.fromValue(
        GoogleCloudContentwarehouseV1AccessControlActionResponse.fromMap(
          (map['accessControl']! as Map).cast<String, dynamic>(),
        ),
      ),
      actionId: pulumi.Input.fromValue(map['actionId'] as String),
      addToFolder: pulumi.Input.fromValue(
        GoogleCloudContentwarehouseV1AddToFolderActionResponse.fromMap(
          (map['addToFolder']! as Map).cast<String, dynamic>(),
        ),
      ),
      dataUpdate: pulumi.Input.fromValue(
        GoogleCloudContentwarehouseV1DataUpdateActionResponse.fromMap(
          (map['dataUpdate']! as Map).cast<String, dynamic>(),
        ),
      ),
      dataValidation: pulumi.Input.fromValue(
        GoogleCloudContentwarehouseV1DataValidationActionResponse.fromMap(
          (map['dataValidation']! as Map).cast<String, dynamic>(),
        ),
      ),
      deleteDocumentAction: pulumi.Input.fromValue(
        GoogleCloudContentwarehouseV1DeleteDocumentActionResponse.fromMap(
          (map['deleteDocumentAction']! as Map).cast<String, dynamic>(),
        ),
      ),
      publishToPubSub: pulumi.Input.fromValue(
        GoogleCloudContentwarehouseV1PublishActionResponse.fromMap(
          (map['publishToPubSub']! as Map).cast<String, dynamic>(),
        ),
      ),
      removeFromFolderAction: pulumi.Input.fromValue(
        GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse.fromMap(
          (map['removeFromFolderAction']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
