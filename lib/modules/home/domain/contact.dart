
final class Contact {
  final String name;
  final bool isFavorite;

  const Contact({
    required this.name,
    required this.isFavorite,
  });

  Contact copyWith({
    String? name,
    String? imageUrl,
    bool? isFavorite,
  }) {
    return Contact(
      name: name ?? this.name,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}