import 'dart:convert';

class Sikomo {
  final String id;
  final String nama;
  final String deskripsi;
  final String rating;
  final String lokasi;
  final String jam;
  final String harga;
  final String fasilitas_1;
  final String fasilitas_2;
  final String image;
  
  Sikomo({
    required this.id,
    required this.nama,
    required this.deskripsi,
    required this.rating,
    required this.lokasi,
    required this.jam,
    required this.harga,
    required this.fasilitas_1,
    required this.fasilitas_2,
    required this.image,
  });

  Sikomo copyWith({
    String? id,
    String? nama,
    String? deskripsi,
    String? lokasi,
    String? jam,
    String? harga,
    String? fasilitas_1,
    String? fasilitas_2,
    String? image,
  }) {
    return Sikomo(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      deskripsi: deskripsi ?? this.deskripsi,
      lokasi: lokasi ?? this.lokasi,
      jam: jam ?? this.jam,
      harga: harga ?? this.harga,
      fasilitas_1: fasilitas_1 ?? this.fasilitas_1,
      fasilitas_2: fasilitas_2 ?? this.fasilitas_2,
      image: image ?? this.image, rating: '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'deskripsi': deskripsi,
      'lokasi': lokasi,
      'jam': jam,
      'harga': harga,
      'fasilitas_1': fasilitas_1,
      'fasilitas_2': fasilitas_2,
      'image': image,
    };
  }

  factory Sikomo.fromMap(Map<String, dynamic> map) {
    return Sikomo(
      id: map['id'] ?? '',
      nama: map['nama'] ?? '',
      deskripsi: map['deskripsi'] ?? '',
      lokasi: map['lokasi'] ?? '',
      jam: map['jam'] ?? '',
      harga: map['harga'] ?? '',
      fasilitas_1: map['fasilitas_1'] ?? '',
      fasilitas_2: map['fasilitas_2'] ?? '',
      image: map['image'] ?? '', rating: '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Sikomo.fromJson(String source) => Sikomo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Sikomo(id: $id, nama: $nama, deskripsi: $deskripsi, lokasi: $lokasi, jam: $jam, harga: $harga, fasilitas_1: $fasilitas_1, fasilitas_2: $fasilitas_2, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Sikomo &&
      other.id == id &&
      other.nama == nama &&
      other.deskripsi == deskripsi &&
      other.lokasi == lokasi &&
      other.jam == jam &&
      other.harga == harga &&
      other.fasilitas_1 == fasilitas_1 &&
      other.fasilitas_2 == fasilitas_2 &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nama.hashCode ^
      deskripsi.hashCode ^
      lokasi.hashCode ^
      jam.hashCode ^
      harga.hashCode ^
      fasilitas_1.hashCode ^
      fasilitas_2.hashCode ^
      image.hashCode;
  }
}
