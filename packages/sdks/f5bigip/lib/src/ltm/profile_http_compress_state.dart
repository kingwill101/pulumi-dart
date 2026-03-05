// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileHttpCompress resources.
class ProfileHttpCompressState {
  /// Specifies the maximum number of compressed bytes that the system buffers before inserting a Content-Length header (which specifies the compressed size) into the response. The default is `4096` bytes.
  final pulumi.Input<int>? compressionBuffersize;
  /// Excludes a specified list of content types from compression of HTTP Content-Type responses. Use a string list to specify a list of content types you want to compress.
  final pulumi.Input<List<String>>? contentTypeExcludes;
  /// Specifies a list of content types for compression of HTTP Content-Type responses. Use a string list to specify a list of content types you want to compress.
  final pulumi.Input<List<String>>? contentTypeIncludes;
  /// Specifies, when checked (enabled), that the system monitors the percent CPU usage and adjusts compression rates automatically when the CPU usage reaches either the CPU Saver High Threshold or the CPU Saver Low Threshold. The default is `enabled`.
  final pulumi.Input<String>? cpuSaver;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies the degree to which the system compresses the content. Higher compression levels cause the compression process to be slower. The default is 1 - Least Compression (Fastest)
  final pulumi.Input<int>? gzipCompressionLevel;
  /// Specifies the number of bytes of memory that the system uses for internal compression buffers when compressing a server response. The default is `8 kilobytes/8192 bytes`.
  final pulumi.Input<int>? gzipMemoryLevel;
  /// Specifies the number of kilobytes in the window size that the system uses when compressing a server response. The default is `16` kilobytes
  final pulumi.Input<int>? gzipWindowSize;
  /// Specifies, when checked (enabled), that the system does not remove the Accept-Encoding: header from an HTTP request. The default is `disabled`.
  final pulumi.Input<String>? keepAcceptEncoding;
  /// Name of the LTM http compress profile,named with their `full path`.The full path is the combination of the `partition + name` (example: `/Common/my-httpcompresprofile` ) or  `partition + directory + name` of the resource  (example: `my-httpcompresprofile`)
  final pulumi.Input<String>? name;
  /// Disables compression on a specified list of HTTP Request-URI responses. Use a regular expression to specify a list of URIs you do not want to compress.
  final pulumi.Input<List<String>>? uriExcludes;
  /// Enables compression on a specified list of HTTP Request-URI responses. Use a regular expression to specify a list of URIs you want to compress.
  final pulumi.Input<List<String>>? uriIncludes;
  /// Specifies, when checked (enabled), that the system inserts a Vary header into cacheable server responses. The default is `enabled`.
  final pulumi.Input<String>? varyHeader;

  /// Creates a new [ProfileHttpCompressState].
  /// [compressionBuffersize] Specifies the maximum number of compressed bytes that the system buffers before inserting a Content-Length header (which specifies the compressed size) into the response. The default is `4096` bytes.
  /// [contentTypeExcludes] Excludes a specified list of content types from compression of HTTP Content-Type responses. Use a string list to specify a list of content types you want to compress.
  /// [contentTypeIncludes] Specifies a list of content types for compression of HTTP Content-Type responses. Use a string list to specify a list of content types you want to compress.
  /// [cpuSaver] Specifies, when checked (enabled), that the system monitors the percent CPU usage and adjusts compression rates automatically when the CPU usage reaches either the CPU Saver High Threshold or the CPU Saver Low Threshold. The default is `enabled`.
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [gzipCompressionLevel] Specifies the degree to which the system compresses the content. Higher compression levels cause the compression process to be slower. The default is 1 - Least Compression (Fastest)
  /// [gzipMemoryLevel] Specifies the number of bytes of memory that the system uses for internal compression buffers when compressing a server response. The default is `8 kilobytes/8192 bytes`.
  /// [gzipWindowSize] Specifies the number of kilobytes in the window size that the system uses when compressing a server response. The default is `16` kilobytes
  /// [keepAcceptEncoding] Specifies, when checked (enabled), that the system does not remove the Accept-Encoding: header from an HTTP request. The default is `disabled`.
  /// [name] Name of the LTM http compress profile,named with their `full path`.The full path is the combination of the `partition + name` (example: `/Common/my-httpcompresprofile` ) or  `partition + directory + name` of the resource  (example: `my-httpcompresprofile`)
  /// [uriExcludes] Disables compression on a specified list of HTTP Request-URI responses. Use a regular expression to specify a list of URIs you do not want to compress.
  /// [uriIncludes] Enables compression on a specified list of HTTP Request-URI responses. Use a regular expression to specify a list of URIs you want to compress.
  /// [varyHeader] Specifies, when checked (enabled), that the system inserts a Vary header into cacheable server responses. The default is `enabled`.
  ProfileHttpCompressState({
    this.compressionBuffersize,
    this.contentTypeExcludes,
    this.contentTypeIncludes,
    this.cpuSaver,
    this.defaultsFrom,
    this.gzipCompressionLevel,
    this.gzipMemoryLevel,
    this.gzipWindowSize,
    this.keepAcceptEncoding,
    this.name,
    this.uriExcludes,
    this.uriIncludes,
    this.varyHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionBuffersize': ?compressionBuffersize,
      'contentTypeExcludes': ?contentTypeExcludes,
      'contentTypeIncludes': ?contentTypeIncludes,
      'cpuSaver': ?cpuSaver,
      'defaultsFrom': ?defaultsFrom,
      'gzipCompressionLevel': ?gzipCompressionLevel,
      'gzipMemoryLevel': ?gzipMemoryLevel,
      'gzipWindowSize': ?gzipWindowSize,
      'keepAcceptEncoding': ?keepAcceptEncoding,
      'name': ?name,
      'uriExcludes': ?uriExcludes,
      'uriIncludes': ?uriIncludes,
      'varyHeader': ?varyHeader,
    };
  }

  factory ProfileHttpCompressState.fromMap(Map<String, dynamic> map) {
    return ProfileHttpCompressState(
      compressionBuffersize: (() { final guardedValue = map['compressionBuffersize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      contentTypeExcludes: (() { final guardedValue = map['contentTypeExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      contentTypeIncludes: (() { final guardedValue = map['contentTypeIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cpuSaver: (() { final guardedValue = map['cpuSaver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gzipCompressionLevel: (() { final guardedValue = map['gzipCompressionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gzipMemoryLevel: (() { final guardedValue = map['gzipMemoryLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gzipWindowSize: (() { final guardedValue = map['gzipWindowSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      keepAcceptEncoding: (() { final guardedValue = map['keepAcceptEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uriExcludes: (() { final guardedValue = map['uriExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uriIncludes: (() { final guardedValue = map['uriIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      varyHeader: (() { final guardedValue = map['varyHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

