class AddAttachmentDocumentToTransactions < ActiveRecord::Migration
  def self.up
    change_table :transactions do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :transactions, :document
  end
end
