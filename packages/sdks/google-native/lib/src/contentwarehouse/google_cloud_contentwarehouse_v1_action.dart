// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_access_control_action.dart';
import 'google_cloud_contentwarehouse_v1_add_to_folder_action.dart';
import 'google_cloud_contentwarehouse_v1_data_update_action.dart';
import 'google_cloud_contentwarehouse_v1_data_validation_action.dart';
import 'google_cloud_contentwarehouse_v1_delete_document_action.dart';
import 'google_cloud_contentwarehouse_v1_publish_action.dart';
import 'google_cloud_contentwarehouse_v1_remove_from_folder_action.dart';

/// Represents the action triggered by Rule Engine when the rule is true.
class GoogleCloudContentwarehouseV1Action {
  /// Action triggering access control operations.
  final pulumi.Input<GoogleCloudContentwarehouseV1AccessControlAction>? accessControl;
  /// ID of the action. Managed internally.
  final pulumi.Input<String>? actionId;
  /// Action triggering create document link operation.
  final pulumi.Input<GoogleCloudContentwarehouseV1AddToFolderAction>? addToFolder;
  /// Action triggering data update operations.
  final pulumi.Input<GoogleCloudContentwarehouseV1DataUpdateAction>? dataUpdate;
  /// Action triggering data validation operations.
  final pulumi.Input<GoogleCloudContentwarehouseV1DataValidationAction>? dataValidation;
  /// Action deleting the document.
  final pulumi.Input<GoogleCloudContentwarehouseV1DeleteDocumentAction>? deleteDocumentAction;
  /// Action publish to Pub/Sub operation.
  final pulumi.Input<GoogleCloudContentwarehouseV1PublishAction>? publishToPubSub;
  /// Action removing a document from a folder.
  final pulumi.Input<GoogleCloudContentwarehouseV1RemoveFromFolderAction>? removeFromFolderAction;

  /// Creates a new [GoogleCloudContentwarehouseV1Action].
  /// [accessControl] Action triggering access control operations.
  /// [actionId] ID of the action. Managed internally.
  /// [addToFolder] Action triggering create document link operation.
  /// [dataUpdate] Action triggering data update operations.
  /// [dataValidation] Action triggering data validation operations.
  /// [deleteDocumentAction] Action deleting the document.
  /// [publishToPubSub] Action publish to Pub/Sub operation.
  /// [removeFromFolderAction] Action removing a document from a folder.
  GoogleCloudContentwarehouseV1Action({
    this.accessControl,
    this.actionId,
    this.addToFolder,
    this.dataUpdate,
    this.dataValidation,
    this.deleteDocumentAction,
    this.publishToPubSub,
    this.removeFromFolderAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControl': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1AccessControlAction, Map<String, dynamic>>(accessControl, (value) => value.toMap()),
      'actionId': ?actionId,
      'addToFolder': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1AddToFolderAction, Map<String, dynamic>>(addToFolder, (value) => value.toMap()),
      'dataUpdate': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1DataUpdateAction, Map<String, dynamic>>(dataUpdate, (value) => value.toMap()),
      'dataValidation': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1DataValidationAction, Map<String, dynamic>>(dataValidation, (value) => value.toMap()),
      'deleteDocumentAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1DeleteDocumentAction, Map<String, dynamic>>(deleteDocumentAction, (value) => value.toMap()),
      'publishToPubSub': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1PublishAction, Map<String, dynamic>>(publishToPubSub, (value) => value.toMap()),
      'removeFromFolderAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1RemoveFromFolderAction, Map<String, dynamic>>(removeFromFolderAction, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1Action.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1Action(
      accessControl: (() { final guardedValue = map['accessControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1AccessControlAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionId: (() { final guardedValue = map['actionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addToFolder: (() { final guardedValue = map['addToFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1AddToFolderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataUpdate: (() { final guardedValue = map['dataUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1DataUpdateAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataValidation: (() { final guardedValue = map['dataValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1DataValidationAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteDocumentAction: (() { final guardedValue = map['deleteDocumentAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1DeleteDocumentAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publishToPubSub: (() { final guardedValue = map['publishToPubSub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1PublishAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      removeFromFolderAction: (() { final guardedValue = map['removeFromFolderAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1RemoveFromFolderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

