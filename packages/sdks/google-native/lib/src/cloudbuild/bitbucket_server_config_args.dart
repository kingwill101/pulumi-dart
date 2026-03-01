// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bitbucket_server_secrets.dart';

/// {@template pulumi_cloudbuild_v1_bitbucket_server_config_args_doc}
/// The set of arguments for BitbucketServerConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_bitbucket_server_config_args_doc}
class BitbucketServerConfigArgs {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final pulumi.Input<String> apiKey;
  /// Optional. The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name. bitbucket_server_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.
  final pulumi.Input<String>? bitbucketServerConfigId;
  /// Time when the config was created.
  final pulumi.Input<String>? createTime;
  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final pulumi.Input<String> hostUri;
  final pulumi.Input<String>? location;
  /// The resource name for the config.
  final pulumi.Input<String>? name;
  /// Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final pulumi.Input<String>? peeredNetwork;
  /// Immutable. IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a 29 bit prefix size. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. The field only has an effect if peered_network is set.
  final pulumi.Input<String>? peeredNetworkIpRange;
  final pulumi.Input<String>? project;
  /// Secret Manager secrets needed by the config.
  final pulumi.Input<BitbucketServerSecrets> secrets;
  /// Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  final pulumi.Input<String>? sslCa;
  /// Username of the account Cloud Build will use on Bitbucket Server.
  final pulumi.Input<String>? username;

  /// Creates a new [BitbucketServerConfigArgs].
  /// [apiKey] Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  /// [bitbucketServerConfigId] Optional. The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name. bitbucket_server_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.
  /// [createTime] Time when the config was created.
  /// [hostUri] Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  /// [location] Optional.
  /// [name] The resource name for the config.
  /// [peeredNetwork] Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  /// [peeredNetworkIpRange] Immutable. IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a 29 bit prefix size. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. The field only has an effect if peered_network is set.
  /// [project] Optional.
  /// [secrets] Secret Manager secrets needed by the config.
  /// [sslCa] Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  /// [username] Username of the account Cloud Build will use on Bitbucket Server.
  BitbucketServerConfigArgs({
    required pulumi.Output<String> apiKey,
    pulumi.Output<String>? bitbucketServerConfigId,
    pulumi.Output<String>? createTime,
    required pulumi.Output<String> hostUri,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peeredNetwork,
    pulumi.Output<String>? peeredNetworkIpRange,
    pulumi.Output<String>? project,
    required pulumi.Output<BitbucketServerSecrets> secrets,
    pulumi.Output<String>? sslCa,
    pulumi.Output<String>? username,
  }) :
      apiKey = pulumi.Input.asInput<String>(apiKey),
      bitbucketServerConfigId = pulumi.Input.asOptionalInput<String>(bitbucketServerConfigId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      hostUri = pulumi.Input.asInput<String>(hostUri),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      peeredNetwork = pulumi.Input.asOptionalInput<String>(peeredNetwork),
      peeredNetworkIpRange = pulumi.Input.asOptionalInput<String>(peeredNetworkIpRange),
      project = pulumi.Input.asOptionalInput<String>(project),
      secrets = pulumi.Input.asInput<BitbucketServerSecrets>(secrets),
      sslCa = pulumi.Input.asOptionalInput<String>(sslCa),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'bitbucketServerConfigId': ?bitbucketServerConfigId,
      'createTime': ?createTime,
      'hostUri': hostUri,
      'location': ?location,
      'name': ?name,
      'peeredNetwork': ?peeredNetwork,
      'peeredNetworkIpRange': ?peeredNetworkIpRange,
      'project': ?project,
      'secrets': pulumi.Input.mapInputValue<BitbucketServerSecrets, Map<String, dynamic>>(secrets, (value) => value.toMap()),
      'sslCa': ?sslCa,
      'username': ?username,
    };
  }

  factory BitbucketServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return BitbucketServerConfigArgs(
      apiKey: pulumi.Output.create<String>(map['apiKey'] as String),
      bitbucketServerConfigId: map['bitbucketServerConfigId'] == null ? null : pulumi.Output.create<String>(map['bitbucketServerConfigId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      hostUri: pulumi.Output.create<String>(map['hostUri'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peeredNetwork: map['peeredNetwork'] == null ? null : pulumi.Output.create<String>(map['peeredNetwork'] as String),
      peeredNetworkIpRange: map['peeredNetworkIpRange'] == null ? null : pulumi.Output.create<String>(map['peeredNetworkIpRange'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      secrets: pulumi.Output.create<BitbucketServerSecrets>(BitbucketServerSecrets.fromMap((map['secrets'] as Map).cast<String, dynamic>())),
      sslCa: map['sslCa'] == null ? null : pulumi.Output.create<String>(map['sslCa'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

