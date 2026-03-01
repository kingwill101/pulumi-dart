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
    pulumi.Output<String>? addonJson,
    pulumi.Output<List<SpringCloudAppCustomPersistentDisk>>? customPersistentDisks,
    pulumi.Output<String>? fqdn,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<SpringCloudAppIdentity>? identity,
    pulumi.Output<SpringCloudAppIngressSettings>? ingressSettings,
    pulumi.Output<bool>? isPublic,
    pulumi.Output<String>? name,
    pulumi.Output<SpringCloudAppPersistentDisk>? persistentDisk,
    pulumi.Output<bool>? publicEndpointEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serviceName,
    pulumi.Output<bool>? tlsEnabled,
    pulumi.Output<String>? url,
  }) :
      addonJson = pulumi.Input.asOptionalInput<String>(addonJson),
      customPersistentDisks = pulumi.Input.asOptionalInput<List<SpringCloudAppCustomPersistentDisk>>(customPersistentDisks),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<SpringCloudAppIdentity>(identity),
      ingressSettings = pulumi.Input.asOptionalInput<SpringCloudAppIngressSettings>(ingressSettings),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      name = pulumi.Input.asOptionalInput<String>(name),
      persistentDisk = pulumi.Input.asOptionalInput<SpringCloudAppPersistentDisk>(persistentDisk),
      publicEndpointEnabled = pulumi.Input.asOptionalInput<bool>(publicEndpointEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      tlsEnabled = pulumi.Input.asOptionalInput<bool>(tlsEnabled),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      addonJson: map['addonJson'] == null ? null : pulumi.Output.create<String>(map['addonJson'] as String),
      customPersistentDisks: map['customPersistentDisks'] == null ? null : pulumi.Output.create<List<SpringCloudAppCustomPersistentDisk>>(pulumi.Input.decodeList<SpringCloudAppCustomPersistentDisk>(map['customPersistentDisks'], (value) => SpringCloudAppCustomPersistentDisk.fromMap((value as Map).cast<String, dynamic>()))),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<SpringCloudAppIdentity>(SpringCloudAppIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      ingressSettings: map['ingressSettings'] == null ? null : pulumi.Output.create<SpringCloudAppIngressSettings>(SpringCloudAppIngressSettings.fromMap((map['ingressSettings'] as Map).cast<String, dynamic>())),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      persistentDisk: map['persistentDisk'] == null ? null : pulumi.Output.create<SpringCloudAppPersistentDisk>(SpringCloudAppPersistentDisk.fromMap((map['persistentDisk'] as Map).cast<String, dynamic>())),
      publicEndpointEnabled: map['publicEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicEndpointEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      tlsEnabled: map['tlsEnabled'] == null ? null : pulumi.Output.create<bool>(map['tlsEnabled'] as bool),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

