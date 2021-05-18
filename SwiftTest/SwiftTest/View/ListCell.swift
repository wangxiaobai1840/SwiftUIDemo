// 
//  ListCell.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/18.
//

import SwiftUI

struct ListCell: View {
    let dataModel:LandmarkRow
    
    var body: some View {
        HStack{
            Text(dataModel.name)
        }
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(dataModel: LandmarkRow(id: 0, name: "Landmark"))
    }
}
