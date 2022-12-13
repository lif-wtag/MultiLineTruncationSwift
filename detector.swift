private func shouldBeTruncated(label: UILabel, text: String, numberOfLines: Int) -> Bool {
   label.layoutIfNeeded()
   let rect = CGSize(width: label.bounds.width, height: CGFloat.greatestFiniteMagnitude)
   let labelSize = text.boundingRect(with: rect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: label.font ?? UIFont.systemFont(ofSize: 12)], context: nil)
   let linesNeeded = Int(ceil(CGFloat(labelSize.height) / label.font.lineHeight))
   return linesNeeded > numberOfLines
}
