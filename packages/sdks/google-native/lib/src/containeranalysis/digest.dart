// ignore_for_file: unused_element, unnecessary_cast


/// Digest information.
class Digest {
  /// `SHA1`, `SHA512` etc.
  final String? algo;
  /// Value of the digest.
  final String? digestBytes;

  /// Creates a new [Digest].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  Digest({
    this.algo,
    this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algo': ?algo,
      'digestBytes': ?digestBytes,
    };
  }

  factory Digest.fromMap(Map<String, dynamic> map) {
    return Digest(
      algo: map['algo'] == null ? null : map['algo'] as String,
      digestBytes: map['digestBytes'] == null ? null : map['digestBytes'] as String,
    );
  }
}

