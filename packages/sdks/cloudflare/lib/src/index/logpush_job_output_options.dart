// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogpushJobOutputOptions {
  /// String to be prepended before each batch.
  final pulumi.Input<String?>? batchPrefix;
  /// String to be appended after each batch.
  final pulumi.Input<String?>? batchSuffix;
  /// If set to true, will cause all occurrences of `${` in the generated files to be replaced with `x{`.
  final pulumi.Input<bool?>? cve202144228;
  /// String to join fields. This field be ignored when `recordTemplate` is set.
  final pulumi.Input<String?>? fieldDelimiter;
  /// List of field names to be included in the Logpush output. For the moment, there is no option to add all fields at once, so you must specify all the fields names you are interested in.
  final pulumi.Input<List<String>?>? fieldNames;
  /// If set to true, subrequests will be merged into the parent request. Only supported for the `httpRequests` dataset.
  final pulumi.Input<bool?>? mergeSubrequests;
  /// Specifies the output type, such as `ndjson` or `csv`. This sets default values for the rest of the settings, depending on the chosen output type. Some formatting rules, like string quoting, are different between output types.
  /// Available values: "ndjson", "csv".
  final pulumi.Input<String?>? outputType;
  /// String to be inserted in-between the records as separator.
  final pulumi.Input<String?>? recordDelimiter;
  /// String to be prepended before each record.
  final pulumi.Input<String?>? recordPrefix;
  /// String to be appended after each record.
  final pulumi.Input<String?>? recordSuffix;
  /// String to use as template for each record instead of the default json key value mapping. All fields used in the template must be present in `fieldNames` as well, otherwise they will end up as null. Format as a Go `text/template` without any standard functions, like conditionals, loops, sub-templates, etc.
  final pulumi.Input<String?>? recordTemplate;
  /// Floating number to specify sampling rate. Sampling is applied on top of filtering, and regardless of the current `sampleInterval` of the data.
  final pulumi.Input<double?>? sampleRate;
  /// String to specify the format for timestamps, such as `unixnano`, `unix`, `rfc3339`, `rfc3339ms` or `rfc3339ns`.
  /// Available values: "unixnano", "unix", "rfc3339", "rfc3339ms", "rfc3339ns".
  final pulumi.Input<String?>? timestampFormat;

  /// Creates a new [LogpushJobOutputOptions].
  /// [batchPrefix] String to be prepended before each batch.
  /// [batchSuffix] String to be appended after each batch.
  /// [cve202144228] If set to true, will cause all occurrences of `${` in the generated files to be replaced with `x{`.
  /// [fieldDelimiter] String to join fields. This field be ignored when `recordTemplate` is set.
  /// [fieldNames] List of field names to be included in the Logpush output. For the moment, there is no option to add all fields at once, so you must specify all the fields names you are interested in.
  /// [mergeSubrequests] If set to true, subrequests will be merged into the parent request. Only supported for the `httpRequests` dataset.
  /// [outputType] Specifies the output type, such as `ndjson` or `csv`. This sets default values for the rest of the settings, depending on the chosen output type. Some formatting rules, like string quoting, are different between output types.
  /// [recordDelimiter] String to be inserted in-between the records as separator.
  /// [recordPrefix] String to be prepended before each record.
  /// [recordSuffix] String to be appended after each record.
  /// [recordTemplate] String to use as template for each record instead of the default json key value mapping. All fields used in the template must be present in `fieldNames` as well, otherwise they will end up as null. Format as a Go `text/template` without any standard functions, like conditionals, loops, sub-templates, etc.
  /// [sampleRate] Floating number to specify sampling rate. Sampling is applied on top of filtering, and regardless of the current `sampleInterval` of the data.
  /// [timestampFormat] String to specify the format for timestamps, such as `unixnano`, `unix`, `rfc3339`, `rfc3339ms` or `rfc3339ns`.
  const LogpushJobOutputOptions({
    this.batchPrefix,
    this.batchSuffix,
    this.cve202144228,
    this.fieldDelimiter,
    this.fieldNames,
    this.mergeSubrequests,
    this.outputType,
    this.recordDelimiter,
    this.recordPrefix,
    this.recordSuffix,
    this.recordTemplate,
    this.sampleRate,
    this.timestampFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchPrefix': ?batchPrefix,
      'batchSuffix': ?batchSuffix,
      'cve202144228': ?cve202144228,
      'fieldDelimiter': ?fieldDelimiter,
      'fieldNames': ?fieldNames,
      'mergeSubrequests': ?mergeSubrequests,
      'outputType': ?outputType,
      'recordDelimiter': ?recordDelimiter,
      'recordPrefix': ?recordPrefix,
      'recordSuffix': ?recordSuffix,
      'recordTemplate': ?recordTemplate,
      'sampleRate': ?sampleRate,
      'timestampFormat': ?timestampFormat,
    };
  }

  factory LogpushJobOutputOptions.fromMap(Map<String, dynamic> map) {
    return LogpushJobOutputOptions(
      batchPrefix: (() { final guardedValue = map['batchPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      batchSuffix: (() { final guardedValue = map['batchSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cve202144228: (() { final guardedValue = map['cve202144228']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldNames: (() { final guardedValue = map['fieldNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mergeSubrequests: (() { final guardedValue = map['mergeSubrequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordDelimiter: (() { final guardedValue = map['recordDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordPrefix: (() { final guardedValue = map['recordPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordSuffix: (() { final guardedValue = map['recordSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordTemplate: (() { final guardedValue = map['recordTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRate: (() { final guardedValue = map['sampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      timestampFormat: (() { final guardedValue = map['timestampFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
