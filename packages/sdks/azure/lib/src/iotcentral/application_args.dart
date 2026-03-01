// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_identity.dart';

/// {@template pulumi_iotcentral_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_iotcentral_application_application_args_doc}
class ApplicationArgs {
  /// A `display_name` name. Custom display name for the IoT Central application. Default is resource name.
  ///
  /// > **Note:** Due to a bug in the provider, the default value of `display_name` of a newly created IoT Central App will be the Resource Group Name, it will be fixed and use resource name in 4.0. For an existing IoT Central App, this could be fixed by specifying the `display_name` explicitly.
  final pulumi.Input<String>? displayName;
  /// An `identity` block as defined below.
  final pulumi.Input<ApplicationIdentity>? identity;
  /// Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether public network access is allowed for the IoT Central Application. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1`
  final pulumi.Input<String>? sku;
  /// A `sub_domain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
  final pulumi.Input<String> subDomain;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `template` name. IoT Central application template name. Defaults to `iotc-pnp-preview@1.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? template;

  /// Creates a new [ApplicationArgs].
  /// [displayName] A `display_name` name. Custom display name for the IoT Central application. Default is resource name.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the IoT Central Application. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  /// [sku] A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1`
  /// [subDomain] A `sub_domain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
  /// [tags] A mapping of tags to assign to the resource.
  /// [template] A `template` name. IoT Central application template name. Defaults to `iotc-pnp-preview@1.0.0`. Changing this forces a new resource to be created.
  ApplicationArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<ApplicationIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sku,
    required pulumi.Output<String> subDomain,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? template,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identity = pulumi.Input.asOptionalInput<ApplicationIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      subDomain = pulumi.Input.asInput<String>(subDomain),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      template = pulumi.Input.asOptionalInput<String>(template);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ApplicationIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'subDomain': subDomain,
      'tags': ?tags,
      'template': ?template,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ApplicationIdentity>(ApplicationIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      subDomain: pulumi.Output.create<String>(map['subDomain'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      template: map['template'] == null ? null : pulumi.Output.create<String>(map['template'] as String),
    );
  }
}

