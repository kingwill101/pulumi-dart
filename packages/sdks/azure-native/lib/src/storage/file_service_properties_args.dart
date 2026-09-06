// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rules.dart';
import 'delete_retention_policy.dart';
import 'protocol_settings.dart';

/// {@template pulumi_storage_file_service_properties_args_doc}
/// The set of arguments for FileServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_file_service_properties_args_doc}
class FileServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// Specifies CORS rules for the File service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the File service.
  final pulumi.Input<CorsRules?>? cors;
  /// The name of the file Service within the specified storage account. File Service Name must be "default"
  final pulumi.Input<String?>? fileServicesName;
  /// Protocol settings for file service
  final pulumi.Input<ProtocolSettings?>? protocolSettings;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The file service properties for share soft delete.
  final pulumi.Input<DeleteRetentionPolicy?>? shareDeleteRetentionPolicy;

  /// Creates a new [FileServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [cors] Specifies CORS rules for the File service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the File service.
  /// [fileServicesName] The name of the file Service within the specified storage account. File Service Name must be "default"
  /// [protocolSettings] Protocol settings for file service
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [shareDeleteRetentionPolicy] The file service properties for share soft delete.
  const FileServicePropertiesArgs({
    required this.accountName,
    this.cors,
    this.fileServicesName,
    this.protocolSettings,
    required this.resourceGroupName,
    this.shareDeleteRetentionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'cors': ?pulumi.Input.mapOptionalInputValue<CorsRules, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'fileServicesName': ?fileServicesName,
      'protocolSettings': ?pulumi.Input.mapOptionalInputValue<ProtocolSettings, Map<String, dynamic>>(protocolSettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'shareDeleteRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<DeleteRetentionPolicy, Map<String, dynamic>>(shareDeleteRetentionPolicy, (value) => value.toMap()),
    };
  }

  factory FileServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return FileServicePropertiesArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CorsRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileServicesName: (() { final guardedValue = map['fileServicesName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolSettings: (() { final guardedValue = map['protocolSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProtocolSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareDeleteRetentionPolicy: (() { final guardedValue = map['shareDeleteRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeleteRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
