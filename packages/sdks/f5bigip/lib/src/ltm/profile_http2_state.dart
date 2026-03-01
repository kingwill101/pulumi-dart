// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileHttp2 resources.
class ProfileHttp2State {
  /// This setting specifies the condition that will cause the BIG-IP system to handle an incoming connection as an HTTP/2 connection, Allowed values : `[“alpn”]` (or) `[“always”]`.
  final pulumi.Input<List<String>>? activationModes;
  /// Specifies how many concurrent requests are allowed to be outstanding on a single HTTP/2 connection.
  final pulumi.Input<int>? concurrentStreamsPerConnection;
  /// Specifies the number of seconds that a connection is idle before the connection is eligible for deletion.
  final pulumi.Input<int>? connectionIdleTimeout;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// Enable or disable enforcement of TLS requirements,Allowed Values : `"enabled"/"disabled"` [Default:`"enabled"`].
  final pulumi.Input<String>? enforceTlsRequirements;
  /// The size of the data frames, in bytes, that the HTTP/2 protocol sends to the client. `Default: 2048`.
  final pulumi.Input<int>? frameSize;
  /// The size of the header table, in KB, for the HTTP headers that the HTTP/2 protocol compresses to save bandwidth.
  final pulumi.Input<int>? headerTableSize;
  /// Enable to include content-length in HTTP/2 headers,Default : disabled
  final pulumi.Input<String>? includeContentLength;
  /// This setting specifies whether the BIG-IP system should add an HTTP header to the HTTP request to show that the request was received over HTTP/2, Allowed Values : `"enabled"/"disabled"` [ Default: `"disabled"`].
  final pulumi.Input<String>? insertHeader;
  /// This setting specifies the name of the header that the BIG-IP system will add to the HTTP request when the Insert Header is enabled.
  final pulumi.Input<String>? insertHeaderName;
  /// Name of Profile should be full path.The full path is the combination of the `partition + profile name`,For example `/Common/test-http2-profile`.
  final pulumi.Input<String>? name;
  /// The flow-control size for upload streams, in KB. `Default: 32`.
  final pulumi.Input<int>? receiveWindow;
  /// The total size of combined data frames, in bytes, that the HTTP/2 protocol sends in a single write function. `Default: 16384`".
  final pulumi.Input<int>? writeSize;

  /// Creates a new [ProfileHttp2State].
  /// [activationModes] This setting specifies the condition that will cause the BIG-IP system to handle an incoming connection as an HTTP/2 connection, Allowed values : `[“alpn”]` (or) `[“always”]`.
  /// [concurrentStreamsPerConnection] Specifies how many concurrent requests are allowed to be outstanding on a single HTTP/2 connection.
  /// [connectionIdleTimeout] Specifies the number of seconds that a connection is idle before the connection is eligible for deletion.
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [enforceTlsRequirements] Enable or disable enforcement of TLS requirements,Allowed Values : `"enabled"/"disabled"` [Default:`"enabled"`].
  /// [frameSize] The size of the data frames, in bytes, that the HTTP/2 protocol sends to the client. `Default: 2048`.
  /// [headerTableSize] The size of the header table, in KB, for the HTTP headers that the HTTP/2 protocol compresses to save bandwidth.
  /// [includeContentLength] Enable to include content-length in HTTP/2 headers,Default : disabled
  /// [insertHeader] This setting specifies whether the BIG-IP system should add an HTTP header to the HTTP request to show that the request was received over HTTP/2, Allowed Values : `"enabled"/"disabled"` [ Default: `"disabled"`].
  /// [insertHeaderName] This setting specifies the name of the header that the BIG-IP system will add to the HTTP request when the Insert Header is enabled.
  /// [name] Name of Profile should be full path.The full path is the combination of the `partition + profile name`,For example `/Common/test-http2-profile`.
  /// [receiveWindow] The flow-control size for upload streams, in KB. `Default: 32`.
  /// [writeSize] The total size of combined data frames, in bytes, that the HTTP/2 protocol sends in a single write function. `Default: 16384`".
  ProfileHttp2State({
    pulumi.Output<List<String>>? activationModes,
    pulumi.Output<int>? concurrentStreamsPerConnection,
    pulumi.Output<int>? connectionIdleTimeout,
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? enforceTlsRequirements,
    pulumi.Output<int>? frameSize,
    pulumi.Output<int>? headerTableSize,
    pulumi.Output<String>? includeContentLength,
    pulumi.Output<String>? insertHeader,
    pulumi.Output<String>? insertHeaderName,
    pulumi.Output<String>? name,
    pulumi.Output<int>? receiveWindow,
    pulumi.Output<int>? writeSize,
  }) :
      activationModes = pulumi.Input.asOptionalInput<List<String>>(activationModes),
      concurrentStreamsPerConnection = pulumi.Input.asOptionalInput<int>(concurrentStreamsPerConnection),
      connectionIdleTimeout = pulumi.Input.asOptionalInput<int>(connectionIdleTimeout),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      enforceTlsRequirements = pulumi.Input.asOptionalInput<String>(enforceTlsRequirements),
      frameSize = pulumi.Input.asOptionalInput<int>(frameSize),
      headerTableSize = pulumi.Input.asOptionalInput<int>(headerTableSize),
      includeContentLength = pulumi.Input.asOptionalInput<String>(includeContentLength),
      insertHeader = pulumi.Input.asOptionalInput<String>(insertHeader),
      insertHeaderName = pulumi.Input.asOptionalInput<String>(insertHeaderName),
      name = pulumi.Input.asOptionalInput<String>(name),
      receiveWindow = pulumi.Input.asOptionalInput<int>(receiveWindow),
      writeSize = pulumi.Input.asOptionalInput<int>(writeSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationModes': ?activationModes,
      'concurrentStreamsPerConnection': ?concurrentStreamsPerConnection,
      'connectionIdleTimeout': ?connectionIdleTimeout,
      'defaultsFrom': ?defaultsFrom,
      'enforceTlsRequirements': ?enforceTlsRequirements,
      'frameSize': ?frameSize,
      'headerTableSize': ?headerTableSize,
      'includeContentLength': ?includeContentLength,
      'insertHeader': ?insertHeader,
      'insertHeaderName': ?insertHeaderName,
      'name': ?name,
      'receiveWindow': ?receiveWindow,
      'writeSize': ?writeSize,
    };
  }

  factory ProfileHttp2State.fromMap(Map<String, dynamic> map) {
    return ProfileHttp2State(
      activationModes: map['activationModes'] == null ? null : pulumi.Output.create<List<String>>((map['activationModes'] as List).cast<String>()),
      concurrentStreamsPerConnection: map['concurrentStreamsPerConnection'] == null ? null : pulumi.Output.create<int>(map['concurrentStreamsPerConnection'] as int),
      connectionIdleTimeout: map['connectionIdleTimeout'] == null ? null : pulumi.Output.create<int>(map['connectionIdleTimeout'] as int),
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      enforceTlsRequirements: map['enforceTlsRequirements'] == null ? null : pulumi.Output.create<String>(map['enforceTlsRequirements'] as String),
      frameSize: map['frameSize'] == null ? null : pulumi.Output.create<int>(map['frameSize'] as int),
      headerTableSize: map['headerTableSize'] == null ? null : pulumi.Output.create<int>(map['headerTableSize'] as int),
      includeContentLength: map['includeContentLength'] == null ? null : pulumi.Output.create<String>(map['includeContentLength'] as String),
      insertHeader: map['insertHeader'] == null ? null : pulumi.Output.create<String>(map['insertHeader'] as String),
      insertHeaderName: map['insertHeaderName'] == null ? null : pulumi.Output.create<String>(map['insertHeaderName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      receiveWindow: map['receiveWindow'] == null ? null : pulumi.Output.create<int>(map['receiveWindow'] as int),
      writeSize: map['writeSize'] == null ? null : pulumi.Output.create<int>(map['writeSize'] as int),
    );
  }
}

