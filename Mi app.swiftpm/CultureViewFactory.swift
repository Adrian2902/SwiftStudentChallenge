//
//  CultureDescription.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 22/02/25.
//

import SwiftUI

class CultureViewFactory {
    static var japan: CultureModel {
        return CultureModel(
            name: "Japan",
            imageName: "japanImage",
            description: "Japan blends ancient traditions with cutting-edge technology. It is known for its Shinto and Buddhist temples, cherry blossoms, and unique cultural practices like bowing as a sign of respect. The country is also famous for anime, sushi, and its efficient bullet trains (Shinkansen).",
            flag: "🇯🇵")
    }
    
    static var mexico: CultureModel{
        return CultureModel(
            name: "Mexico",
            imageName: "mexicoImage",
            description: "Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.",
            flag: "🇲🇽"
        )
    }
    
    static var france: CultureModel{
        return CultureModel(
            name: "France",
            imageName: "franceImage",
            description: "France is known for its art, fashion, and gastronomy. Paris, the 'City of Light', is home to iconic landmarks like the Eiffel Tower and the Louvre Museum. French cuisine is a global reference, with dishes like escargots, boeuf bourguignon, and world-class wines.",
            flag: "🇫🇷"
        )
    }
    
    static var india: CultureModel{
        return CultureModel(
            name: "India",
            imageName: "indiaImage",
            description: "India is a land of diversity, with over 2,000 ethnic groups and more than 1,600 languages spoken. It is famous for its spiritual traditions, including yoga and meditation. The Taj Mahal, a symbol of love, attracts millions of visitors, and Indian cuisine, rich in spices, is beloved worldwide.",
            flag: "🇮🇳"
        )
    }
    
    static var italy: CultureModel{
        return CultureModel(
            name: "Italy",
            imageName: "italyImage",
            description: "Italy has a deep artistic and historical legacy, being home to the Roman Empire and the Renaissance. Cities like Rome, Venice, and Florence offer breathtaking architecture. Italian cuisine, including pasta and pizza, is among the most popular in the world, and espresso culture is deeply ingrained in daily life.",
            flag: "🇮🇹"
        )
    }
    
    static var china: CultureModel{
        return CultureModel(
            name: "China",
            imageName: "chinaImage",
            description: "China has one of the world's oldest civilizations, with contributions to philosophy, science, and technology. The Great Wall, Forbidden City, and Terracotta Army reflect its historical richness. Chinese cuisine varies by region, from spicy Sichuan dishes to Cantonese dim sum.",
            flag: "🇨🇳"
        )
    }
    
    static var brazil: CultureModel{
        return CultureModel(
            name: "Brazil",
            imageName: "brazilImage",
            description: "Brazil is the largest country in South America, famous for its Amazon Rainforest and vibrant culture. The country is passionate about football (soccer) and has produced legendary players like Pelé. The annual Rio Carnival is one of the most spectacular celebrations in the world.",
            flag: "🇧🇷"
        )
    }
    
    static var egypt: CultureModel{
        return CultureModel(
            name: "Egypt",
            imageName: "egyptImage",
            description: "Egypt is home to one of the world's oldest civilizations, known for its pyramids, the Sphinx, and hieroglyphics. The Nile River plays a crucial role in the country's history and agriculture. Modern Egypt blends Islamic and Coptic traditions with a growing contemporary art scene.",
            flag: "🇪🇬"
        )
    }
    
    static var germany: CultureModel{
        return CultureModel(
            name: "Germany",
            imageName: "germanyImage",
            description: "Germany is an economic powerhouse with a rich cultural and intellectual history, producing figures like Beethoven and Einstein. It is famous for its Christmas markets, precision engineering (like BMW and Mercedes-Benz), and Oktoberfest, where millions gather to enjoy beer and traditional Bavarian food.",
            flag: "🇩🇪"
        )
    }
    
    static var russia: CultureModel{
        return CultureModel(
            name: "Russia",
            imageName: "russiaImage",
            description: "Russia, the largest country in the world, has a unique cultural landscape shaped by its history and geography. The country is known for its ballet (Bolshoi and Mariinsky), classical literature (Dostoevsky, Tolstoy), and grand architecture, including the Kremlin and St. Basil's Cathedral.",
            flag: "🇷🇺"
        )
    }
    
    static func createView(for culture: CultureModel) -> some View {
        return CultureView(cultureModel: culture)
    }
}
