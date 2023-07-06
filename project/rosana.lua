_editor_class["Title_Leaf"]=Class(_object)
_editor_class["Title_Leaf"].init=function(self,_x,_y,_)
    self.x,self.y=_x,_y
    self.img="image:TitleLeaves" .. ran:Int(1, 9)
    self.layer=LAYER_TOP
    self.group=GROUP_GHOST
    self.hide=false
    self.bound=false
    self.navi=false
    self.hp=10
    self.maxhp=10
    self.colli=false
    self._servants={}
    self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.scale = ran:Float(-0.35, -0.5)
    self.hscale, self.vscale = (1 / 2.25) + self.scale, (1 / 2.25) + self.scale
    self.vx, self.vy = ran:Float(-1, -2), ran:Float(-1, -0.1)
    self.omiga = ran:Float(-1, 1)
end
_editor_class["Title_Leaf"].frame=function(self)
    if self.x <= -853 then
        _del(self,true)
    else
    end
    self.class.base.frame(self)
end
_editor_class["Title_Leaf"].render=function(self)
    SetViewMode'ui'
    self.class.base.render(self)
    SetViewMode'world'
end
