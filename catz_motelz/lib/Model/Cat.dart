import 'dart:convert';

class Cattz {
    final String length;
    final String origin;
    final String imageLink;
    
    final double minWeight;
    final double maxWeight;
    
    final String name;
    

    Cattz({
        required this.length,
        required this.origin,
        required this.imageLink,
        
        required this.minWeight,
        required this.maxWeight,
        
        required this.name,
       
    });

    factory Cattz.fromJson(Map<String, dynamic> json) => Cattz(
        length: json["length"],
        origin: json["origin"],
        imageLink: json["image_link"],
       
       
        minWeight: json["min_weight"]?.toDouble(),
        maxWeight: json["max_weight"],
        
        name: json["name"],
       
    );

}
