// ignore_for_file: unused_element, unnecessary_cast


class GetContainerConsumer {
  /// The Container name.
  final String? name;
  /// The consumer URL.
  final String? url;

  /// Creates a new [GetContainerConsumer].
  /// [name] The Container name.
  /// [url] The consumer URL.
  GetContainerConsumer({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'url': ?url,
    };
  }

  factory GetContainerConsumer.fromMap(Map<String, dynamic> map) {
    return GetContainerConsumer(
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

