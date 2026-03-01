// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bitbucket_server_config_connected_repository.dart';
import 'bitbucket_server_config_secrets.dart';

/// Input properties used for looking up and filtering BitbucketServerConfig resources.
class BitbucketServerConfigState {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
  /// Changing this field will result in deleting/ recreating the resource.
  final pulumi.Input<String>? apiKey;
  /// The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name.
  final pulumi.Input<String>? configId;
  /// Connected Bitbucket Server repositories for this config.
  /// Structure is documented below.
  final pulumi.Input<List<BitbucketServerConfigConnectedRepository>>? connectedRepositories;
  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
  /// If you need to change it, please create another BitbucketServerConfig.
  final pulumi.Input<String>? hostUri;
  /// The location of this bitbucket server config.
  final pulumi.Input<String>? location;
  /// The resource name for the config.
  final pulumi.Input<String>? name;
  /// The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.
  /// This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty,
  /// no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format
  /// projects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final pulumi.Input<String>? peeredNetwork;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Secret Manager secrets needed by the config.
  /// Structure is documented below.
  final pulumi.Input<BitbucketServerConfigSecrets>? secrets;
  /// SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  final pulumi.Input<String>? sslCa;
  /// Username of the account Cloud Build will use on Bitbucket Server.
  final pulumi.Input<String>? username;
  /// Output only. UUID included in webhook requests. The UUID is used to look up the corresponding config.
  final pulumi.Input<String>? webhookKey;

  /// Creates a new [BitbucketServerConfigState].
  /// [apiKey] Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
  /// [configId] The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name.
  /// [connectedRepositories] Connected Bitbucket Server repositories for this config.
  /// [hostUri] Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
  /// [location] The location of this bitbucket server config.
  /// [name] The resource name for the config.
  /// [peeredNetwork] The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.
  /// [project] The ID of the project in which the resource belongs.
  /// [secrets] Secret Manager secrets needed by the config.
  /// [sslCa] SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  /// [username] Username of the account Cloud Build will use on Bitbucket Server.
  /// [webhookKey] Output only. UUID included in webhook requests. The UUID is used to look up the corresponding config.
  BitbucketServerConfigState({
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? configId,
    pulumi.Output<List<BitbucketServerConfigConnectedRepository>>? connectedRepositories,
    pulumi.Output<String>? hostUri,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peeredNetwork,
    pulumi.Output<String>? project,
    pulumi.Output<BitbucketServerConfigSecrets>? secrets,
    pulumi.Output<String>? sslCa,
    pulumi.Output<String>? username,
    pulumi.Output<String>? webhookKey,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      configId = pulumi.Input.asOptionalInput<String>(configId),
      connectedRepositories = pulumi.Input.asOptionalInput<List<BitbucketServerConfigConnectedRepository>>(connectedRepositories),
      hostUri = pulumi.Input.asOptionalInput<String>(hostUri),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      peeredNetwork = pulumi.Input.asOptionalInput<String>(peeredNetwork),
      project = pulumi.Input.asOptionalInput<String>(project),
      secrets = pulumi.Input.asOptionalInput<BitbucketServerConfigSecrets>(secrets),
      sslCa = pulumi.Input.asOptionalInput<String>(sslCa),
      username = pulumi.Input.asOptionalInput<String>(username),
      webhookKey = pulumi.Input.asOptionalInput<String>(webhookKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'configId': ?configId,
      'connectedRepositories': ?pulumi.Input.mapOptionalInputValue<List<BitbucketServerConfigConnectedRepository>, List<Map<String, dynamic>>>(connectedRepositories, (value) => pulumi.Input.encodeList<BitbucketServerConfigConnectedRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostUri': ?hostUri,
      'location': ?location,
      'name': ?name,
      'peeredNetwork': ?peeredNetwork,
      'project': ?project,
      'secrets': ?pulumi.Input.mapOptionalInputValue<BitbucketServerConfigSecrets, Map<String, dynamic>>(secrets, (value) => value.toMap()),
      'sslCa': ?sslCa,
      'username': ?username,
      'webhookKey': ?webhookKey,
    };
  }

  factory BitbucketServerConfigState.fromMap(Map<String, dynamic> map) {
    return BitbucketServerConfigState(
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      configId: map['configId'] == null ? null : pulumi.Output.create<String>(map['configId'] as String),
      connectedRepositories: map['connectedRepositories'] == null ? null : pulumi.Output.create<List<BitbucketServerConfigConnectedRepository>>(pulumi.Input.decodeList<BitbucketServerConfigConnectedRepository>(map['connectedRepositories'], (value) => BitbucketServerConfigConnectedRepository.fromMap((value as Map).cast<String, dynamic>()))),
      hostUri: map['hostUri'] == null ? null : pulumi.Output.create<String>(map['hostUri'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peeredNetwork: map['peeredNetwork'] == null ? null : pulumi.Output.create<String>(map['peeredNetwork'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      secrets: map['secrets'] == null ? null : pulumi.Output.create<BitbucketServerConfigSecrets>(BitbucketServerConfigSecrets.fromMap((map['secrets'] as Map).cast<String, dynamic>())),
      sslCa: map['sslCa'] == null ? null : pulumi.Output.create<String>(map['sslCa'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
      webhookKey: map['webhookKey'] == null ? null : pulumi.Output.create<String>(map['webhookKey'] as String),
    );
  }
}

