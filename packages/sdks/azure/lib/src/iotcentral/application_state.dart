// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_identity.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// A `displayName` name. Custom display name for the IoT Central application. Default is resource name.
  ///
  /// &gt; **Note:** Due to a bug in the provider, the default value of `displayName` of a newly created IoT Central App will be the Resource Group Name, it will be fixed and use resource name in 4.0. For an existing IoT Central App, this could be fixed by specifying the `displayName` explicitly.
  final pulumi.Input<String?>? displayName;
  /// An `identity` block as defined below.
  final pulumi.Input<ApplicationIdentity?>? identity;
  /// Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Whether public network access is allowed for the IoT Central Application. Defaults to `true`.
  final pulumi.Input<bool?>? publicNetworkAccessEnabled;
  /// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1`
  final pulumi.Input<String?>? sku;
  /// A `subDomain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
  final pulumi.Input<String?>? subDomain;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A `template` name. IoT Central application template name. Defaults to `iotc-pnp-preview@1.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? template;

  /// Creates a new [ApplicationState].
  /// [displayName] A `displayName` name. Custom display name for the IoT Central application. Default is resource name.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the IoT Central Application. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  /// [sku] A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1`
  /// [subDomain] A `subDomain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
  /// [tags] A mapping of tags to assign to the resource.
  /// [template] A `template` name. IoT Central application template name. Defaults to `iotc-pnp-preview@1.0.0`. Changing this forces a new resource to be created.
  const ApplicationState({
    this.displayName,
    this.identity,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.sku,
    this.subDomain,
    this.tags,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ApplicationIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'subDomain': ?subDomain,
      'tags': ?tags,
      'template': ?template,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subDomain: (() { final guardedValue = map['subDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
