// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDebugSession.
class GetDebugSessionResult {
  /// Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
  final int count;
  /// The first transaction creation timestamp, recorded by UAP.
  final String createTime;
  /// Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.
  final String filter;
  /// A unique ID for this DebugSession.
  final String name;
  /// Optional. The time in seconds after which this DebugSession should end. This value will override the value in query param, if both are provided.
  final String timeout;
  /// Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.
  final int tracesize;
  /// Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.
  final int validity;

  /// Creates a new [GetDebugSessionResult].
  /// [count] Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
  /// [createTime] The first transaction creation timestamp, recorded by UAP.
  /// [filter] Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.
  /// [name] A unique ID for this DebugSession.
  /// [timeout] Optional. The time in seconds after which this DebugSession should end. This value will override the value in query param, if both are provided.
  /// [tracesize] Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.
  /// [validity] Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.
  const GetDebugSessionResult({
    required this.count,
    required this.createTime,
    required this.filter,
    required this.name,
    required this.timeout,
    required this.tracesize,
    required this.validity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'createTime': createTime,
      'filter': filter,
      'name': name,
      'timeout': timeout,
      'tracesize': tracesize,
      'validity': validity,
    };
  }

  factory GetDebugSessionResult.fromMap(Map<String, dynamic> map) {
    return GetDebugSessionResult(
      count: map['count'] as int,
      createTime: map['createTime'] as String,
      filter: map['filter'] as String,
      name: map['name'] as String,
      timeout: map['timeout'] as String,
      tracesize: map['tracesize'] as int,
      validity: map['validity'] as int,
    );
  }
}

