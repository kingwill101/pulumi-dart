// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ftp_server_internal_config_consumer_accept_list.dart';
import 'ftp_server_internal_config_consumer_reject_list.dart';

class FtpServerInternalConfig {
  /// A list of consumer projects that are allowed to connect to this server.
  /// Structure is documented below.
  final pulumi.Input<List<FtpServerInternalConfigConsumerAcceptList>?>? consumerAcceptLists;
  /// A list of consumer projects that are rejected from connecting to this server.
  /// Structure is documented below.
  final pulumi.Input<List<FtpServerInternalConfigConsumerRejectList>?>? consumerRejectLists;
  /// (Output)
  /// The Private Service Connect service attachment URI for the SFTP server.
  final pulumi.Input<String?>? serviceAttachment;

  /// Creates a new [FtpServerInternalConfig].
  /// [consumerAcceptLists] A list of consumer projects that are allowed to connect to this server.
  /// [consumerRejectLists] A list of consumer projects that are rejected from connecting to this server.
  /// [serviceAttachment] (Output)
  const FtpServerInternalConfig({
    this.consumerAcceptLists,
    this.consumerRejectLists,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerAcceptLists': ?pulumi.Input.mapOptionalInputValue<List<FtpServerInternalConfigConsumerAcceptList>, List<Map<String, dynamic>>>(consumerAcceptLists, (value) => pulumi.Input.encodeList<FtpServerInternalConfigConsumerAcceptList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumerRejectLists': ?pulumi.Input.mapOptionalInputValue<List<FtpServerInternalConfigConsumerRejectList>, List<Map<String, dynamic>>>(consumerRejectLists, (value) => pulumi.Input.encodeList<FtpServerInternalConfigConsumerRejectList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory FtpServerInternalConfig.fromMap(Map<String, dynamic> map) {
    return FtpServerInternalConfig(
      consumerAcceptLists: (() { final guardedValue = map['consumerAcceptLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FtpServerInternalConfigConsumerAcceptList>(guardedValue, (value) => FtpServerInternalConfigConsumerAcceptList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      consumerRejectLists: (() { final guardedValue = map['consumerRejectLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FtpServerInternalConfigConsumerRejectList>(guardedValue, (value) => FtpServerInternalConfigConsumerRejectList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
