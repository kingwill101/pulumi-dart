// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bitbucket_server_repository_id_response.dart';
import 'bitbucket_server_secrets_response.dart';

/// Result data returned by getBitbucketServerConfig.
class GetBitbucketServerConfigResult {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final String? apiKey;
  /// Connected Bitbucket Server repositories for this config.
  final List<BitbucketServerRepositoryIdResponse>? connectedRepositories;
  /// Time when the config was created.
  final String? createTime;
  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final String? hostUri;
  /// The resource name for the config.
  final String? name;
  /// Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final String? peeredNetwork;
  /// Immutable. IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a 29 bit prefix size. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. The field only has an effect if peered_network is set.
  final String? peeredNetworkIpRange;
  /// Secret Manager secrets needed by the config.
  final BitbucketServerSecretsResponse? secrets;
  /// Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  final String? sslCa;
  /// Username of the account Cloud Build will use on Bitbucket Server.
  final String? username;
  /// UUID included in webhook requests. The UUID is used to look up the corresponding config.
  final String? webhookKey;

  /// Creates a new [GetBitbucketServerConfigResult].
  /// [apiKey] Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  /// [connectedRepositories] Connected Bitbucket Server repositories for this config.
  /// [createTime] Time when the config was created.
  /// [hostUri] Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  /// [name] The resource name for the config.
  /// [peeredNetwork] Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  /// [peeredNetworkIpRange] Immutable. IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a 29 bit prefix size. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. The field only has an effect if peered_network is set.
  /// [secrets] Secret Manager secrets needed by the config.
  /// [sslCa] Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  /// [username] Username of the account Cloud Build will use on Bitbucket Server.
  /// [webhookKey] UUID included in webhook requests. The UUID is used to look up the corresponding config.
  const GetBitbucketServerConfigResult({
    this.apiKey,
    this.connectedRepositories,
    this.createTime,
    this.hostUri,
    this.name,
    this.peeredNetwork,
    this.peeredNetworkIpRange,
    this.secrets,
    this.sslCa,
    this.username,
    this.webhookKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'connectedRepositories': ?(() { final guardedValue = connectedRepositories; if (guardedValue == null) return null; return pulumi.Input.encodeList<BitbucketServerRepositoryIdResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'hostUri': ?hostUri,
      'name': ?name,
      'peeredNetwork': ?peeredNetwork,
      'peeredNetworkIpRange': ?peeredNetworkIpRange,
      'secrets': ?secrets?.toMap(),
      'sslCa': ?sslCa,
      'username': ?username,
      'webhookKey': ?webhookKey,
    };
  }

  factory GetBitbucketServerConfigResult.fromMap(Map<String, dynamic> map) {
    return GetBitbucketServerConfigResult(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectedRepositories: (() { final guardedValue = map['connectedRepositories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BitbucketServerRepositoryIdResponse>(guardedValue, (value) => BitbucketServerRepositoryIdResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostUri: (() { final guardedValue = map['hostUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeredNetwork: (() { final guardedValue = map['peeredNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeredNetworkIpRange: (() { final guardedValue = map['peeredNetworkIpRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return BitbucketServerSecretsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sslCa: (() { final guardedValue = map['sslCa']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webhookKey: (() { final guardedValue = map['webhookKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
