require 'rails_helper'

RSpec.describe User, type: :model do
    subject do
        described_class.new(id: 4, name: 'Robert', username: 'roby',email: 'robert@gmail.com', password: 'secret123')
    end
    before{ subject.save }

    it 'if email is blank' do
        subject.email = nil
        expect(subject).to_not be_valid
    end

    it 'if email is valid' do
        subject.email = 'robert@gmail.com'
        expect(subject).to be_valid
    end

    # it 'name is not present' do
    #     subject.name = nil
    #     expect(subject).to_not be_valid
    # end

    it 'name is present' do
        subject.name = 'Robert'
        expect(subject).to be_valid
    end

    it 'username not is present' do
        subject.username = nil
        expect(subject).to_not be_valid
    end

    it 'username is present' do
        subject.username = 'roby'
        expect(subject).to be_valid
    end

    it 'password not is present' do
        subject.password = nil
        expect(subject).to_not be_valid
    end

    it 'password is present' do
        subject.password = 'secret123'
        expect(subject).to be_valid
    end

    it 'password should not be at least 6 characters' do
        subject.password = '12345'
        expect(subject).to_not be_valid
    end

    it 'password should be at least 6 characters' do
        subject.password = '123456'
        expect(subject).to be_valid
    end

    it 'id is present' do
        subject.id = 4
        expect(subject).to be_valid
        expect(subject.id).to eq(4)
    end
    # context 'if email is not unique' do
    #     before { described_class.new(id: 4, name: 'Robert', username: 'roby',email: 'robert@gmail.com', password: 'secret123')}
    #    it { expect(subject).to_not be_valid }
    # end

end