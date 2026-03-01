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
  final pulumi.Input<CorsRules>? cors;
  /// The name of the file Service within the specified storage account. File Service Name must be "default"
  final pulumi.Input<String>? fileServicesName;
  /// Protocol settings for file service
  final pulumi.Input<ProtocolSettings>? protocolSettings;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The file service properties for share soft delete.
  final pulumi.Input<DeleteRetentionPolicy>? shareDeleteRetentionPolicy;

  /// Creates a new [FileServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [cors] Specifies CORS rules for the File service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the File service.
  /// [fileServicesName] The name of the file Service within the specified storage account. File Service Name must be "default"
  /// [protocolSettings] Protocol settings for file service
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [shareDeleteRetentionPolicy] The file service properties for share soft delete.
  FileServicePropertiesArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<CorsRules>? cors,
    pulumi.Output<String>? fileServicesName,
    pulumi.Output<ProtocolSettings>? protocolSettings,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<DeleteRetentionPolicy>? shareDeleteRetentionPolicy,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      cors = pulumi.Input.asOptionalInput<CorsRules>(cors),
      fileServicesName = pulumi.Input.asOptionalInput<String>(fileServicesName),
      protocolSettings = pulumi.Input.asOptionalInput<ProtocolSettings>(protocolSettings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareDeleteRetentionPolicy = pulumi.Input.asOptionalInput<DeleteRetentionPolicy>(shareDeleteRetentionPolicy);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      cors: map['cors'] == null ? null : pulumi.Output.create<CorsRules>(CorsRules.fromMap((map['cors'] as Map).cast<String, dynamic>())),
      fileServicesName: map['fileServicesName'] == null ? null : pulumi.Output.create<String>(map['fileServicesName'] as String),
      protocolSettings: map['protocolSettings'] == null ? null : pulumi.Output.create<ProtocolSettings>(ProtocolSettings.fromMap((map['protocolSettings'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareDeleteRetentionPolicy: map['shareDeleteRetentionPolicy'] == null ? null : pulumi.Output.create<DeleteRetentionPolicy>(DeleteRetentionPolicy.fromMap((map['shareDeleteRetentionPolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

