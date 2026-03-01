// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'l2_network_attachment_configuration_response.dart';
import 'l3_network_attachment_configuration_response.dart';
import 'trunked_network_attachment_configuration_response.dart';

class AttachedNetworkConfigurationResponse {
  /// The list of Layer 2 Networks and related configuration for attachment.
  final List<L2NetworkAttachmentConfigurationResponse>? l2Networks;
  /// The list of Layer 3 Networks and related configuration for attachment.
  final List<L3NetworkAttachmentConfigurationResponse>? l3Networks;
  /// The list of Trunked Networks and related configuration for attachment.
  final List<TrunkedNetworkAttachmentConfigurationResponse>? trunkedNetworks;

  /// Creates a new [AttachedNetworkConfigurationResponse].
  /// [l2Networks] The list of Layer 2 Networks and related configuration for attachment.
  /// [l3Networks] The list of Layer 3 Networks and related configuration for attachment.
  /// [trunkedNetworks] The list of Trunked Networks and related configuration for attachment.
  AttachedNetworkConfigurationResponse({
    this.l2Networks,
    this.l3Networks,
    this.trunkedNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l2Networks': ?l2Networks == null ? null : pulumi.Input.encodeList<L2NetworkAttachmentConfigurationResponse, Map<String, dynamic>>(l2Networks!, (value) => value.toMap()),
      'l3Networks': ?l3Networks == null ? null : pulumi.Input.encodeList<L3NetworkAttachmentConfigurationResponse, Map<String, dynamic>>(l3Networks!, (value) => value.toMap()),
      'trunkedNetworks': ?trunkedNetworks == null ? null : pulumi.Input.encodeList<TrunkedNetworkAttachmentConfigurationResponse, Map<String, dynamic>>(trunkedNetworks!, (value) => value.toMap()),
    };
  }

  factory AttachedNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AttachedNetworkConfigurationResponse(
      l2Networks: map['l2Networks'] == null ? null : pulumi.Input.decodeList<L2NetworkAttachmentConfigurationResponse>(map['l2Networks'], (value) => L2NetworkAttachmentConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      l3Networks: map['l3Networks'] == null ? null : pulumi.Input.decodeList<L3NetworkAttachmentConfigurationResponse>(map['l3Networks'], (value) => L3NetworkAttachmentConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      trunkedNetworks: map['trunkedNetworks'] == null ? null : pulumi.Input.decodeList<TrunkedNetworkAttachmentConfigurationResponse>(map['trunkedNetworks'], (value) => TrunkedNetworkAttachmentConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

