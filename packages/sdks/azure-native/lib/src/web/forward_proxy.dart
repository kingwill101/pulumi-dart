// ignore_for_file: unused_element, unnecessary_cast

import 'forward_proxy_convention.dart';

/// The configuration settings of a forward proxy used to make the requests.
class ForwardProxy {
  /// The convention used to determine the url of the request made.
  final ForwardProxyConvention? convention;
  /// The name of the header containing the host of the request.
  final String? customHostHeaderName;
  /// The name of the header containing the scheme of the request.
  final String? customProtoHeaderName;

  /// Creates a new [ForwardProxy].
  /// [convention] The convention used to determine the url of the request made.
  /// [customHostHeaderName] The name of the header containing the host of the request.
  /// [customProtoHeaderName] The name of the header containing the scheme of the request.
  ForwardProxy({
    this.convention,
    this.customHostHeaderName,
    this.customProtoHeaderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convention': ?convention == null ? null : convention!.value,
      'customHostHeaderName': ?customHostHeaderName,
      'customProtoHeaderName': ?customProtoHeaderName,
    };
  }

  factory ForwardProxy.fromMap(Map<String, dynamic> map) {
    return ForwardProxy(
      convention: map['convention'] == null ? null : ForwardProxyConvention.fromValue(map['convention'] as String),
      customHostHeaderName: map['customHostHeaderName'] == null ? null : map['customHostHeaderName'] as String,
      customProtoHeaderName: map['customProtoHeaderName'] == null ? null : map['customProtoHeaderName'] as String,
    );
  }
}

