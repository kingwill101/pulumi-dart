// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPageShieldScriptsVersion {
  /// The cryptomining score of the JavaScript content.
  final pulumi.Input<int> cryptominingScore;
  /// The dataflow score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  final pulumi.Input<int> dataflowScore;
  /// The timestamp of when the script was last fetched.
  final pulumi.Input<String> fetchedAt;
  /// The computed hash of the analyzed script.
  final pulumi.Input<String> hash;
  /// The integrity score of the JavaScript content.
  final pulumi.Input<int> jsIntegrityScore;
  /// The magecart score of the JavaScript content.
  final pulumi.Input<int> magecartScore;
  /// The malware score of the JavaScript content.
  final pulumi.Input<int> malwareScore;
  /// The obfuscation score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  final pulumi.Input<int> obfuscationScore;

  /// Creates a new [GetPageShieldScriptsVersion].
  /// [cryptominingScore] The cryptomining score of the JavaScript content.
  /// [dataflowScore] The dataflow score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  /// [fetchedAt] The timestamp of when the script was last fetched.
  /// [hash] The computed hash of the analyzed script.
  /// [jsIntegrityScore] The integrity score of the JavaScript content.
  /// [magecartScore] The magecart score of the JavaScript content.
  /// [malwareScore] The malware score of the JavaScript content.
  /// [obfuscationScore] The obfuscation score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  const GetPageShieldScriptsVersion({
    required this.cryptominingScore,
    required this.dataflowScore,
    required this.fetchedAt,
    required this.hash,
    required this.jsIntegrityScore,
    required this.magecartScore,
    required this.malwareScore,
    required this.obfuscationScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptominingScore': cryptominingScore,
      'dataflowScore': dataflowScore,
      'fetchedAt': fetchedAt,
      'hash': hash,
      'jsIntegrityScore': jsIntegrityScore,
      'magecartScore': magecartScore,
      'malwareScore': malwareScore,
      'obfuscationScore': obfuscationScore,
    };
  }

  factory GetPageShieldScriptsVersion.fromMap(Map<String, dynamic> map) {
    return GetPageShieldScriptsVersion(
      cryptominingScore: pulumi.Input.fromValue((map['cryptominingScore'] as num).toInt()),
      dataflowScore: pulumi.Input.fromValue((map['dataflowScore'] as num).toInt()),
      fetchedAt: pulumi.Input.fromValue(map['fetchedAt'] as String),
      hash: pulumi.Input.fromValue(map['hash'] as String),
      jsIntegrityScore: pulumi.Input.fromValue((map['jsIntegrityScore'] as num).toInt()),
      magecartScore: pulumi.Input.fromValue((map['magecartScore'] as num).toInt()),
      malwareScore: pulumi.Input.fromValue((map['malwareScore'] as num).toInt()),
      obfuscationScore: pulumi.Input.fromValue((map['obfuscationScore'] as num).toInt()),
    );
  }
}
