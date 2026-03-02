// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_app_custom_persistent_disk.dart';
import 'spring_cloud_app_identity.dart';
import 'spring_cloud_app_ingress_settings.dart';
import 'spring_cloud_app_persistent_disk.dart';

/// Input properties used for looking up and filtering SpringCloudApp resources.
class SpringCloudAppState {
  /// A JSON object that contains the addon configurations of the Spring Cloud Service.
  final pulumi.Input<String>? addonJson;
  /// A `custom_persistent_disk` block as defined below.
  final pulumi.Input<List<SpringCloudAppCustomPersistentDisk>>? customPersistentDisks;
  /// The Fully Qualified DNS Name of the Spring Application in the service.
  final pulumi.Input<String>? fqdn;
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
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serviceName;
  /// Is End to End TLS Enabled? Defaults to `false`.
  final pulumi.Input<bool>? tlsEnabled;
  /// The public endpoint of the Spring Cloud Application.
  final pulumi.Input<String>? url;

  /// Creates a new [SpringCloudAppState].
  /// [addonJson] A JSON object that contains the addon configurations of the Spring Cloud Service.
  /// [customPersistentDisks] A `custom_persistent_disk` block as defined below.
  /// [fqdn] The Fully Qualified DNS Name of the Spring Application in the service.
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
  /// [url] The public endpoint of the Spring Cloud Application.
  SpringCloudAppState({
    this.addonJson,
    this.customPersistentDisks,
    this.fqdn,
    this.httpsOnly,
    this.identity,
    this.ingressSettings,
    this.isPublic,
    this.name,
    this.persistentDisk,
    this.publicEndpointEnabled,
    this.resourceGroupName,
    this.serviceName,
    this.tlsEnabled,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonJson': ?addonJson,
      'customPersistentDisks': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudAppCustomPersistentDisk>, List<Map<String, dynamic>>>(customPersistentDisks, (value) => pulumi.Input.encodeList<SpringCloudAppCustomPersistentDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fqdn': ?fqdn,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingressSettings': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppIngressSettings, Map<String, dynamic>>(ingressSettings, (value) => value.toMap()),
      'isPublic': ?isPublic,
      'name': ?name,
      'persistentDisk': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppPersistentDisk, Map<String, dynamic>>(persistentDisk, (value) => value.toMap()),
      'publicEndpointEnabled': ?publicEndpointEnabled,
      'resourceGroupName': ?resourceGroupName,
      'serviceName': ?serviceName,
      'tlsEnabled': ?tlsEnabled,
      'url': ?url,
    };
  }

  factory SpringCloudAppState.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppState(
      addonJson: map['addonJson'] == null ? null : (map['addonJson']! as String).input(),
      customPersistentDisks: map['customPersistentDisks'] == null ? null : (pulumi.Input.decodeList<SpringCloudAppCustomPersistentDisk>(map['customPersistentDisks']!, (value) => SpringCloudAppCustomPersistentDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly']! as bool).input(),
      identity: map['identity'] == null ? null : (SpringCloudAppIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      ingressSettings: map['ingressSettings'] == null ? null : (SpringCloudAppIngressSettings.fromMap((map['ingressSettings']! as Map).cast<String, dynamic>())).input(),
      isPublic: map['isPublic'] == null ? null : (map['isPublic']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      persistentDisk: map['persistentDisk'] == null ? null : (SpringCloudAppPersistentDisk.fromMap((map['persistentDisk']! as Map).cast<String, dynamic>())).input(),
      publicEndpointEnabled: map['publicEndpointEnabled'] == null ? null : (map['publicEndpointEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName']! as String).input(),
      tlsEnabled: map['tlsEnabled'] == null ? null : (map['tlsEnabled']! as bool).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

