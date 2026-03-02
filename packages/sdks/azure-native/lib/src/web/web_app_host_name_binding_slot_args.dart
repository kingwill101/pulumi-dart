// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_type.dart';
import 'custom_host_name_dns_record_type.dart';
import 'host_name_type.dart';
import 'ssl_state.dart';

/// {@template pulumi_web_web_app_host_name_binding_slot_args_doc}
/// The set of arguments for WebAppHostNameBindingSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_host_name_binding_slot_args_doc}
class WebAppHostNameBindingSlotArgs {
  /// Azure resource name.
  final pulumi.Input<String>? azureResourceName;
  /// Azure resource type.
  final pulumi.Input<AzureResourceType>? azureResourceType;
  /// Custom DNS record type.
  final pulumi.Input<CustomHostNameDnsRecordType>? customHostNameDnsRecordType;
  /// Fully qualified ARM domain resource URI.
  final pulumi.Input<String>? domainId;
  /// Hostname in the hostname binding.
  final pulumi.Input<String>? hostName;
  /// Hostname type.
  final pulumi.Input<HostNameType>? hostNameType;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// App Service app name.
  final pulumi.Input<String>? siteName;
  /// Name of the deployment slot. If a slot is not specified, the API will create a binding for the production slot.
  final pulumi.Input<String> slot;
  /// SSL type
  final pulumi.Input<SslState>? sslState;
  /// SSL certificate thumbprint
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [WebAppHostNameBindingSlotArgs].
  /// [azureResourceName] Azure resource name.
  /// [azureResourceType] Azure resource type.
  /// [customHostNameDnsRecordType] Custom DNS record type.
  /// [domainId] Fully qualified ARM domain resource URI.
  /// [hostName] Hostname in the hostname binding.
  /// [hostNameType] Hostname type.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [siteName] App Service app name.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will create a binding for the production slot.
  /// [sslState] SSL type
  /// [thumbprint] SSL certificate thumbprint
  WebAppHostNameBindingSlotArgs({
    this.azureResourceName,
    this.azureResourceType,
    this.customHostNameDnsRecordType,
    this.domainId,
    this.hostName,
    this.hostNameType,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    this.siteName,
    required this.slot,
    this.sslState,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceName': ?azureResourceName,
      'azureResourceType': ?pulumi.Input.mapOptionalInputValue<AzureResourceType, String>(azureResourceType, (value) => value.value),
      'customHostNameDnsRecordType': ?pulumi.Input.mapOptionalInputValue<CustomHostNameDnsRecordType, String>(customHostNameDnsRecordType, (value) => value.value),
      'domainId': ?domainId,
      'hostName': ?hostName,
      'hostNameType': ?pulumi.Input.mapOptionalInputValue<HostNameType, String>(hostNameType, (value) => value.value),
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'slot': slot,
      'sslState': ?pulumi.Input.mapOptionalInputValue<SslState, String>(sslState, (value) => value.value),
      'thumbprint': ?thumbprint,
    };
  }

  factory WebAppHostNameBindingSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppHostNameBindingSlotArgs(
      azureResourceName: map['azureResourceName'] == null ? null : (map['azureResourceName'] as String).input(),
      azureResourceType: map['azureResourceType'] == null ? null : (AzureResourceType.fromValue(map['azureResourceType'] as String)).input(),
      customHostNameDnsRecordType: map['customHostNameDnsRecordType'] == null ? null : (CustomHostNameDnsRecordType.fromValue(map['customHostNameDnsRecordType'] as String)).input(),
      domainId: map['domainId'] == null ? null : (map['domainId'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      hostNameType: map['hostNameType'] == null ? null : (HostNameType.fromValue(map['hostNameType'] as String)).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: map['siteName'] == null ? null : (map['siteName'] as String).input(),
      slot: (map['slot'] as String).input(),
      sslState: map['sslState'] == null ? null : (SslState.fromValue(map['sslState'] as String)).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

