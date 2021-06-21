require_relative "../src/tiros"

RSpec.describe Tiros do
    let(:tiros) {Tiros.new()}

    it 'exist' do
        expect(Tiros).to be_a Class
    end

    it 'has tiro 1' do
        t1 = tiros.tiro_1
        expect(t1).to eql tiros.r1 
    end

    it 'has tiro 2' do
        t2 = tiros.tiro_2
        expect(t2).to eql tiros.r2 
    end

    it 'has total' do
        total = tiros.total_tiros
        expect(total).to eql tiros.total 
    end

    it 'has spare' do
        tiros.total = 10
        spare = tiros.spare(5)
        expect(tiros.total).to eql 15 
    end

    it 'has strike' do
        tiros.total = 10
        strike = tiros.strike(5,8)
        expect(tiros.total).to eql 23 
    end

    it 'has suma total de puntos' do
        tiros.total = 10
        total_siguiente = tiros.suma_puntos(8)
        expect(tiros.total).to eql 18
    end

end