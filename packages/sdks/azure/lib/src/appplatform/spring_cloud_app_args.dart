// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_app_custom_persistent_disk.dart';
import 'spring_cloud_app_identity.dart';
import 'spring_cloud_app_ingress_settings.dart';
import 'spring_cloud_app_persistent_disk.dart';

/// {@template pulumi_appplatform_spring_cloud_app_spring_cloud_app_args_doc}
/// The set of arguments for SpringCloudApp.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_app_spring_cloud_app_args_doc}
class SpringCloudAppArgs {
  /// A JSON object that contains the addon configurations of the Spring Cloud Service.
  final pulumi.Input<String>? addonJson;
  /// A `custom_persistent_disk` block as defined below.
  final pulumi.Input<List<SpringCloudAppCustomPersistentDisk>>? customPersistentDisks;
  /// Is only HTTPS allowed? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<SpringCloudAppIdentity>? identity;
  /// An `ingress_settings` block as defined below.
  final pulumi.Input<SpringCloudAppIngressSettings>? ingressSettings;
  /// Does the Spring Cloud Application have public endpoint? Defaults to `false`.
  final pulumi.Input<bool>? isPublic;
  /// Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An `persistent_disk` block as defined below.
  final pulumi.Input<SpringCloudAppPersistentDisk>? persistentDisk;
  /// Should the App in vnet injection instance exposes endpoint which could be accessed from Internet?
  final pulumi.Input<bool>? publicEndpointEnabled;
  /// Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> serviceName;
  /// Is End to End TLS Enabled? Defaults to `false`.
  final pulumi.Input<bool>? tlsEnabled;

  /// Creates a new [SpringCloudAppArgs].
  /// [addonJson] A JSON object that contains the addon configurations of the Spring Cloud Service.
  /// [customPersistentDisks] A `custom_persistent_disk` block as defined below.
  /// [httpsOnly] Is only HTTPS allowed? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [ingressSettings] An `ingress_settings` block as defined below.
  /// [isPublic] Does the Spring Cloud Application have public endpoint? Defaults to `false`.
  /// [name] Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created.
  /// [persistentDisk] An `persistent_disk` block as defined below.
  /// [publicEndpointEnabled] Should the App in vnet injection instance exposes endpoint which could be accessed from Internet?
  /// [resourceGroupName] Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created.
  /// [serviceName] Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  /// [tlsEnabled] Is End to End TLS Enabled? Defaults to `false`.
  const SpringCloudAppArgs({
    this.addonJson,
    this.customPersistentDisks,
    this.httpsOnly,
    this.identity,
    this.ingressSettings,
    this.isPublic,
    this.name,
    this.persistentDisk,
    this.publicEndpointEnabled,
    required this.resourceGroupName,
    required this.serviceName,
    this.tlsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonJson': ?addonJson,
      'customPersistentDisks': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudAppCustomPersistentDisk>, List<Map<String, dynamic>>>(customPersistentDisks, (value) => pulumi.Input.encodeList<SpringCloudAppCustomPersistentDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingressSettings': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppIngressSettings, Map<String, dynamic>>(ingressSettings, (value) => value.toMap()),
      'isPublic': ?isPublic,
      'name': ?name,
      'persistentDisk': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppPersistentDisk, Map<String, dynamic>>(persistentDisk, (value) => value.toMap()),
      'publicEndpointEnabled': ?publicEndpointEnabled,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tlsEnabled': ?tlsEnabled,
    };
  }

  factory SpringCloudAppArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppArgs(
      addonJson: (() { final guardedValue = map['addonJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPersistentDisks: (() { final guardedValue = map['customPersistentDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpringCloudAppCustomPersistentDisk>(guardedValue, (value) => SpringCloudAppCustomPersistentDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudAppIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingressSettings: (() { final guardedValue = map['ingressSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudAppIngressSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistentDisk: (() { final guardedValue = map['persistentDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudAppPersistentDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicEndpointEnabled: (() { final guardedValue = map['publicEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tlsEnabled: (() { final guardedValue = map['tlsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

