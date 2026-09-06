// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_type.dart';
import 'custom_host_name_dns_record_type.dart';
import 'host_name_type.dart';
import 'ssl_state.dart';

/// {@template pulumi_web_web_app_host_name_binding_args_doc}
/// The set of arguments for WebAppHostNameBinding.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_host_name_binding_args_doc}
class WebAppHostNameBindingArgs {
  /// Azure resource name.
  final pulumi.Input<String?>? azureResourceName;
  /// Azure resource type.
  final pulumi.Input<AzureResourceType?>? azureResourceType;
  /// Custom DNS record type.
  final pulumi.Input<CustomHostNameDnsRecordType?>? customHostNameDnsRecordType;
  /// Fully qualified ARM domain resource URI.
  final pulumi.Input<String?>? domainId;
  /// Hostname in the hostname binding.
  final pulumi.Input<String?>? hostName;
  /// Hostname type.
  final pulumi.Input<HostNameType?>? hostNameType;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// App Service app name.
  final pulumi.Input<String?>? siteName;
  /// SSL type
  final pulumi.Input<SslState?>? sslState;
  /// SSL certificate thumbprint
  final pulumi.Input<String?>? thumbprint;

  /// Creates a new [WebAppHostNameBindingArgs].
  /// [azureResourceName] Azure resource name.
  /// [azureResourceType] Azure resource type.
  /// [customHostNameDnsRecordType] Custom DNS record type.
  /// [domainId] Fully qualified ARM domain resource URI.
  /// [hostName] Hostname in the hostname binding.
  /// [hostNameType] Hostname type.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] App Service app name.
  /// [sslState] SSL type
  /// [thumbprint] SSL certificate thumbprint
  const WebAppHostNameBindingArgs({
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
    this.sslState,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceName': ?azureResourceName,
      'azureResourceType': ?pulumi.Input.mapOptionalInputValue<AzureResourceType, String>(azureResourceType, (value) => value.wireValue),
      'customHostNameDnsRecordType': ?pulumi.Input.mapOptionalInputValue<CustomHostNameDnsRecordType, String>(customHostNameDnsRecordType, (value) => value.wireValue),
      'domainId': ?domainId,
      'hostName': ?hostName,
      'hostNameType': ?pulumi.Input.mapOptionalInputValue<HostNameType, String>(hostNameType, (value) => value.wireValue),
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'sslState': ?pulumi.Input.mapOptionalInputValue<SslState, String>(sslState, (value) => value.wireValue),
      'thumbprint': ?thumbprint,
    };
  }

  factory WebAppHostNameBindingArgs.fromMap(Map<String, dynamic> map) {
    return WebAppHostNameBindingArgs(
      azureResourceName: (() { final guardedValue = map['azureResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureResourceType: (() { final guardedValue = map['azureResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceType.fromValue(guardedValue as String)); })(),
      customHostNameDnsRecordType: (() { final guardedValue = map['customHostNameDnsRecordType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomHostNameDnsRecordType.fromValue(guardedValue as String)); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostNameType: (() { final guardedValue = map['hostNameType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostNameType.fromValue(guardedValue as String)); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslState: (() { final guardedValue = map['sslState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslState.fromValue(guardedValue as String)); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
