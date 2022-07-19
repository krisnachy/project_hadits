// To parse this JSON data, do
//
//     final dailyDoaModel = dailyDoaModelFromJson(jsonString);

import 'dart:convert';

List<DailyDoaModel> dailyDoaModelFromJson(String str) => List<DailyDoaModel>.from(json.decode(str).map((x) => DailyDoaModel.fromJson(x)));

String dailyDoaModelToJson(List<DailyDoaModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DailyDoaModel {
    DailyDoaModel({
        required this.id,
        required this.doa,
        required this.ayat,
        required this.latin,
        required this.artinya,
    });

    String id;
    String doa;
    String ayat;
    String latin;
    String artinya;

    factory DailyDoaModel.fromJson(Map<String, dynamic> json) => DailyDoaModel(
        id: json["id"],
        doa: json["doa"],
        ayat: json["ayat"],
        latin: json["latin"],
        artinya: json["artinya"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "doa": doa,
        "ayat": ayat,
        "latin": latin,
        "artinya": artinya,
    };
}
